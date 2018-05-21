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

	if ! diff -u -w temp.txt "$output"; then
		let err=$(( err + 1 ))
		echo "[!] test $n failed: incorrect output" >&2
		return 1
	fi

	echo "[OK] test $n"
}

run_test 'simple io' '< ./testdata/input01.txt' './testdata/output01.txt'

run_test 'simple io with -' '- < ./testdata/input01.txt' './testdata/output01.txt'

run_test 'phrase length -n' '-n 3 - < ./testdata/input02.txt' './testdata/output02.txt'

run_test 'minimum frequency -m' '-m 4 - < ./testdata/input03.txt' './testdata/output03.txt'

run_test 'both -m -n' '-n 3 -m 3 - < ./testdata/input04.txt' './testdata/output04.txt'

run_test 'read file' './testdata/input01.txt' './testdata/output01.txt'

run_test 'read file with phrase length -n' '-n 3 ./testdata/input02.txt' './testdata/output02.txt'

run_test 'read file with minimum frequency -m' '-m 4 ./testdata/input03.txt' './testdata/output03.txt'

run_test 'read file with both -m -n' '-n 3 -m 3 ./testdata/input04.txt' './testdata/output04.txt'

# echo "10. read file, write file"
# rm -f temp.txt
# $cmd ./testdata/input01.txt temp.txt
# if ! diff -u temp.txt ./testdata/output01.txt; then
# 	let err=$(( err + 1 ))
# 	echo "[!] test 10 failed" 
# 	# exit 1
# fi
# 
# echo "11. read/write file with phrase length -n"
# rm -f temp.txt
# $cmd -n 3 ./testdata/input02.txt temp.txt
# if ! diff -u temp.txt ./testdata/output02.txt; then
# 	let err=$(( err + 1 ))
# 	echo "[!] test 11 failed" 
# 	# exit 1
# fi
# 
# echo "12. read/write file with minimum frequency -m"
# $cmd -m 4 ./testdata/input03.txt temp.txt
# if ! diff -u temp.txt ./testdata/output03.txt; then
# 	let err=$(( err + 1 ))
# 	echo "[!] test 12 failed" 
# 	# exit 1
# fi
# 
# 
# echo "13. read/write file with both -m -n"
# $cmd -n 3 -m 3 ./testdata/input04.txt temp.txt
# if ! diff -u temp.txt ./testdata/output04.txt; then
# 	let err=$(( err + 1 ))
# 	echo "[!] test 09 failed" 
# 	# exit 1
# fi

if [ "$err" != 0 ]; then
	echo "$err tests failed"
	exit 1
fi

