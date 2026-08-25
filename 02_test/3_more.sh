#!/bin/sh
echo "taking more than 9 params in but I am not sure if I wrote it right"
while [ "$#" -gt "0" ]; do
	echo "\$1 is $1"
	shift
done
echo "it works"
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then
	echo "There was an error or smth"
fi

echo "PID of current -> $$, good use for some touch /tmp/skrr.$$"
echo "PID of last run background process -> $!"
echo "and there is some $IFS Internal Field Separator (default is space tab newline)"

OLD_IFS="$IFS"
IFS=:
echo "Input data separated by colons (:)"
read x y z
echo "x is $x y is $y z is $z"

# should be written most likely with saving OLD_IFS but not sure why right now other than reset
echo "resetting the IFS"
IFS=$OLD_IFS
