#!/bin/sh

. ./lib.sh

add_u() {
	USER=$1
	PASS=$2
	shift
	shift
	COMM=$@
	echo "Adding $USER ..."
	echo useradd -C "$COMM" $USER
	echo passwd $USER $PASS
	echo "Adding user $USER ($COMM) with password $PASS"
}

echo "--- Starting the script ---"
echo "Script called with $@"
echo "add some users"
add_u username_is_dollar_one password_with_\$2 This is part of the comment like Million Dollar the Mr. Krab
add_u bob password123 Bob Bobbynsky the Jazz Player
echo "--- Ending adding the users & starting the librarty funcs ---"
x=1
echo "x is $x"
calling_from_lib 1 2 3
echo "x is $x"
echo "there is no scope of variables soooooo double checking everything"
echo "--- and there are some weird things about it like ---"
a=Hello
b=World
non_change $a $b
echo "a is $a"
echo "b is $b"
