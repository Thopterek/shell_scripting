#!/bin/sh
echo -en "Guess the num: "
read X
# you can write regex with [^0-9] which means not a number
echo $X | grep "[0-9]" >/dev/null 2>&1
if [ "$?" -eq "0" ]; then
	echo "is a number"
	if [ "$X" -eq "7" ]; then
		echo "YOOO YOU GOT A RIGHT NUMBER"
	fi
elif [ "$?" != "0" ]; then
	echo "it is not a number"
fi

X=0
while [ -n "$X" ]; do
	echo "Enter some text (RETURN TO QUIT)"
	read X
	if [ -n "$X" ]; then
		echo $X
	fi
done
