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
