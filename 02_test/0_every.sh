#!/bin/sh
type [
# tests are most of the time as a smybolic link through [
which [
ls -l /usr/bin/[
ls -l /usr/bin/test
# invoked through while or if statements
SET=true
NUM=1
# single = for strings
# -eq for integers
if [ $SET = true ]; then
	echo $SET
fi

if [ $NUM -eq 0 ]; then
	echo "Num was 0"
elif [ $NUM -eq 1 ]; then
	echo "Num was 1"
else
	echo "Num was something else"
fi

for i in -1 0 1 "bye bye" damn "0_every.sh"; do
	echo "-----------------------------------------------"
	echo "start the if statement run with i set to -> $i"
	echo "-----------------------------------------------"
	if [ "$i" -lt "0" ]; then
		echo "i is less than zero"
	fi
	if [ "$i" -gt "0" ]; then
		echo "i is more than zero"
	fi
	[ "$i" -le "0" ] && echo "i is less than or equal to zero"
	[ "$i" -ge "0" ] && echo "i is more than or equal to zero"
	[ "$i" = "0" ] && echo "i is string or number"
	[ "$i" = "damn" ] && echo "i is matching damn"
	[ "$i" != "damn" ] && echo "i is not equal to damn"
	[ -n "$i" ] && echo "i is of nonzero len"
	[ -f "$i" ] && echo "i is the path of a real file" || echo "No such file: $i"
	[ -x "$i" ] && echo "i is the path of exec file"
	[ "$i" -nt "/etc/passwd" ] && echo "i is a file newer than /etc/passwd"
done

echo -------INFO--------
echo "not available in more traditional shells"
echo "-a and -e mean file exists"
echo "-s file is a socket"
echo "-nt file is newer than"
echo "-ot file is older than"
echo "-ef paths refer to the same file"
echo "-o file is owned by the user running the test"
