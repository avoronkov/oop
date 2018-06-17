#!/usr/bin/env python

import json
import logging
import os
import requests
import subprocess

URL = 'https://api.bitbucket.org/2.0/repositories/'

USERS = [
    ('bastrykina', ['bastrykina_oop']),
    ('chmil', ['chmil_oop']),
    ('galios', ['galios_16203', 'galios_oop']),
    ('grigorovich', ['grigorovich_oop']),
    ('petin', ['petin_oop']),
    ('pushkov', ['pushkov_oop']),
    ('razumov', ['a_razumov_oop']),
    ('shustova', ['shustova_oop']),
    ('snegireva', ['snegireva_oop']),
    ('voloshina', ['voloshina_oop']),
    ('yashin', ['yashin_oop']),
]

BASE_REPO_DIRS = []
BASE_DIR = 'tmp.repos'

PASSWORD = os.environ["PASSWORD"]

def pull(repo_path):
    try:
        if os.path.exists(os.path.join(repo_path, '.git')):
            subprocess.check_call(["git", "pull"], cwd=repo_path)
        elif os.path.exists(os.path.join(repo_path, '.hg')):
            subprocess.check_call(["hg", "pull"], cwd=repo_path)
            subprocess.check_call(["hg", "update"], cwd=repo_path)
        else:
            logging.warning("No .git or .hg found in %s" % (repo_path))
    except Exception as e:
        logging.exception("Failed to pull in %s" % repo_path)

def clone(repo_url, repo_path):
    if "hg@" in repo_url:
        subprocess.check_call(["hg", "clone", repo_url, repo_path])
    elif "git@" in repo_url:
        subprocess.check_call(["git", "clone", repo_url, repo_path])
    else:
        raise Exception("Unknown repo type: %s" % repo_url)

def prep(user, repos):
    d = os.path.join(BASE_DIR, user)
    if not os.path.exists(d):
        os.makedirs(d)
    BASE_REPO_DIRS.append(d)
    for r in repos:
        reponame = os.path.basename(r)
        rp = os.path.join(d, reponame)
        if os.path.exists(rp):
            pull(rp)
        else:
            clone(r, rp)

def process_user(user, uids):
    links_data = []
    for uid in uids:
        logging.warning("url: %s" % URL+uid)
        r = requests.get(URL + uid, auth=('alxn1101r', PASSWORD))
        for i in [x["links"]["clone"] for x in r.json()["values"]]:
            links_data += [y["href"] for y in i if y["href"].startswith('git@') or y["href"].startswith('ssh://')]
    print json.dumps(links_data, indent=4)
    prep(user, links_data)

if __name__ == '__main__':
    for user, uids in USERS:
        logging.warning("process user %s %s" % (user, uids))
        process_user(user, uids)
    logging.warning("base repos dirs: %s" % BASE_REPO_DIRS)
    subprocess.check_call(["./gen_report"] + BASE_REPO_DIRS)

