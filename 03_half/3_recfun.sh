#!/bin/sh

. ./lib.sh

if [ "$1" = "a" ]; then
	while :; do
		echo "Enter a number:"
		read x
		factorial $x
	done
else
	echo "Checking exit codes"
	echo "Starting return code is $?"
	return_with
	# save always just after so it won't get changed
	RETURN_CODE=$?
	echo "Now return code is $RETURN_CODE"
	if [ "$RETURN_CODE" -eq "1" ]; then
		echo "Something wrong with useradd"
	elif [ "$RETURN_CODE" -eq "2" ]; then
		echo "Something wrong with something else even though I didn't even sett it up"
	fi
fi
