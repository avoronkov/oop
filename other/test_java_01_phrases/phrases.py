#!/usr/bin/env python
import sys
import argparse

def words(i):
    ws = []
    for line in i:
        ws += line.split()
    # print >>sys.stderr, "words = %s" % (ws)
    return ws

def phrases(ws, length):
    if len(ws) < length:
        return []
    ps = []
    for i in range(len(ws) - length + 1):
        ps.append(ws[i:i+length])
    # print >>sys.stderr, "phrases = %s" % ps 
    return ps

def stat(ps, minimum):
    d = {}
    for p in ps:
        phrase = " ".join(p)
        d[phrase] = d.get(phrase, 0) + 1
    lst = sorted(d.items(), key=lambda (k, v): v)
    lst.reverse()
    lst = [x for x in lst if x[1] >= minimum]
    return lst


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-n', metavar='N', type=int, default=2, help='phrase length')
    parser.add_argument('-m', metavar='M', type=int, default=2, help='minimum phrase frequency')
    parser.add_argument("input", nargs='?', default="-", help="input file")

    args = parser.parse_args()

    stats = stat( phrases(words(sys.stdin), args.n), args.m )
    for phrase, freq in stats:
        print("%s (%d)" % (phrase, freq))


if __name__ == "__main__":
    main()
