#!/bin/sh
# the builded up version with $(command) is same as `whoami`
# I like it more ngl, I never know where the little thing is on keyboard
echo -en "What is your name [ $(whoami) ] "
read myname
if [ -z "$myname" ]; then
	myname=$(whoami)
fi
echo "Your name is $myname"
echo "or version with shell variable special"
echo -en "Again what is your name $(whoami)? "
read myname
echo "as per not needing the if statement"
echo "Your name is: ${myname:-$(whoami)}"
echo "there is also setting the default with :="
echo "Your anme is: ${myname:=IF SET NOTHING THIS IS THE NAME}"
