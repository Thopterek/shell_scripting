#!/bin/sh

echo "Comeback! Time to grep!"
# cut, pulls out pieces of each line of text
# -d, delimiter split, each line on the : (without on tab)
# -f(num), where num is a number of field taken
# rather than using `commnads` just the $(commands)
echo "user name ${USER}"
SAVE=$(grep "^${USER}:" /etc/passwd | cut -d: -f1)
echo $SAVE
echo "Those two outputs are made in different ways"
echo "--- added 2>/dev/null to supress errors ---"
HTML_FILES=$(find / -name "*.html" -print 2>/dev/null)
echo $HTML_FILES | grep "/index.html$"
echo "THE WSL ERRORS OF LACK OF ACCESS ARE CRAZY, I might never get to this point"
find / -name "*.html" -print 2>/dev/null | grep "/index.html$"
