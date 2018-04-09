#!/bin/bash

cmd="$@"

err=0
n=0

run_test()
{
	local desc="$1"
	local args="$2"
	local output="$3"

	let n=$(( n + 1 ))

	echo "$n. $desc"
	echo "$cmd $args"
	eval "$cmd $args" > temp.txt
	local ret="$?"
	if [ "$ret" != 0 ]; then
		let err=$(( err + 1 ))
		echo "[!] test $n failed: exit code = $ret" >&2
		return 1
	fi

	if ! diff -u temp.txt "$output"; then
		let err=$(( err + 1 ))
		echo "[!] test $n failed: incorrect output" >&2
		return 1
	fi

	echo "[OK] test $n"
}

run_test 'cycle print' '< ./testdata/input01.txt' './testdata/output01.txt'

run_test 'factorial 5' '< ./testdata/input02.txt' './testdata/output02.txt'

run_test '2 + 3' '< ./testdata/input03.txt' './testdata/output03.txt'


if [ "$err" != 0 ]; then
	echo "$err tests failed"
	exit 1
fi

