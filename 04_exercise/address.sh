#!/bin/sh

. ./lib.sh

# some small amount of funtioncs (C like order)
new_data() {
	echo "###################################"
	echo "Your session is temporary for now"
}

menu() {
	case $INPUT in
	1)
		echo "Adding new data right after this message"
		new_data
		return 0
		;;
	2) echo "Removing the data" ;;
	3) echo "Editing the data" ;;
	4) echo "Running the search on the records" ;;
	5)
		echo "################"
		echo "Exiting: bye bye"
		echo "################"
		return 5
		;;
	esac
	return 0
}

# intialization and main
AC=$#
AV=$@

prog_start
EXIT=$?
if [ "$EXIT" -ne "0" ]; then
	exit 1
fi
while [ "$EXIT" -eq "0" ]; do
	display_menu
	read INPUT
	check_input
	menu
	EXIT=$?
done
exit 0
