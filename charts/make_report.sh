#!/bin/bash

set -ux

basedir="tmp.repos"

base_repo_dirs=""

pull()
{
	local dir="$1"
	if [ -e "$dir/.git" ]; then
		( cd "$dir" && git pull )
	elif [ -e "$dir/.hg" ];then
		( cd "$dir" && hg pull )
	else
		echo "No .git or .hg found." >&2
		return 1
	fi
}

clone()
{
	local repo="$1"
	local dest="$2"

	case "$repo" in
		*hg@*) hg clone "$repo" "$dest" ;;
		*git@*) git clone "$repo" "$dest" ;;
		*) echo "Unknown repo type: $1" >&2; return 1;;
	esac
}

prep()
{
	local name="$1"
	shift
	local repos="$@"

	local reponame

	mkdir -p "$basedir/$name"
	base_repo_dirs+=" $basedir/$name"

	for r in $repos; do
		reponame=`basename $r`
		if [ -d "$basedir/$name/$reponame" ]; then
			pull "$basedir/$name/$reponame"
		else
			clone "$r" "$basedir/$name/$reponame"
		fi
	done
}

prep bastrykina \
	git@bitbucket.org:bastrykina_oop/stackpl.git \
	git@bitbucket.org:bastrykina_oop/phrases_java.git \
	git@bitbucket.org:bastrykina_oop/phrases.git \
	git@bitbucket.org:bastrykina_oop/game_of_life.git \
	git@bitbucket.org:bastrykina_oop/calendar.git \
	git@bitbucket.org:bastrykina_oop/battleships.git

prep chmil \
	ssh://hg@bitbucket.org/chmil_oop/lab2 \
	ssh://hg@bitbucket.org/chmil_oop/lab1

prep galios \
	git@bitbucket.org:galios_16203/repository1.git

prep grigorovich \
	git@bitbucket.org:grigorovich_oop/tasks.git

prep petin \
	git@bitbucket.org:petin_oop/task1.git \
	git@bitbucket.org:petin_oop/task2.git \
	git@bitbucket.org:petin_oop/task3.git \
	git@bitbucket.org:petin_oop/task4.git

prep pushkov \
	git@bitbucket.org:pushkov_oop/lab4.git \
	git@bitbucket.org:pushkov_oop/lab3.git \
	git@bitbucket.org:pushkov_oop/lab2_test.git \
	git@bitbucket.org:pushkov_oop/lab2.git \
	git@bitbucket.org:pushkov_oop/lab1.git

prep razumov \
	ssh://hg@bitbucket.org/a_razumov_oop/lab4 \
	ssh://hg@bitbucket.org/a_razumov_oop/lab3 \
	ssh://hg@bitbucket.org/a_razumov_oop/lab2 \
	ssh://hg@bitbucket.org/a_razumov_oop/lab1 \
	ssh://hg@bitbucket.org/a_razumov_oop/j_lab1

prep shustova \
	git@bitbucket.org:shustova_oop/room_with_project.git \
	git@bitbucket.org:shustova_oop/life.git \
	git@bitbucket.org:shustova_oop/calendar.git \
	git@bitbucket.org:shustova_oop/battleship.git \
	git@bitbucket.org:shustova_oop/java_phrases.git

prep snegireva \
	git@bitbucket.org:snegireva_oop/spyair_kek.git

prep voloshina \
	ssh://hg@bitbucket.org/voloshina_oop/lab-4 \
	ssh://hg@bitbucket.org/voloshina_oop/lab-3 \
	ssh://hg@bitbucket.org/voloshina_oop/lab-2 \
	ssh://hg@bitbucket.org/voloshina_oop/lab-1 \
	git@bitbucket.org:voloshina_oop/java.git

prep yashin \
	ssh://hg@bitbucket.org/yashin_oop/lab4 \
	ssh://hg@bitbucket.org/yashin_oop/lab3b \
	ssh://hg@bitbucket.org/yashin_oop/lab3a \
	ssh://hg@bitbucket.org/yashin_oop/lab2 \
	ssh://hg@bitbucket.org/yashin_oop/jlab2 \
	ssh://hg@bitbucket.org/yashin_oop/jlab1 \
	ssh://hg@bitbucket.org/yashin_oop/nsu_oop

./gen_report $base_repo_dirs
# ./gen_report \
# 	2018.java/bastrykina \
# 	2018.java/chmil \
# 	2018.java/galios \
# 	2018.java/grigorovich \
# 	2018.java/petin \
# 	2018.java/pushkov \
# 	2018.java/razumov \
# 	2018.java/shustova \
# 	2018.java/snegireva \
# 	2018.java/voloshina \
# 	2018.java/yashin
