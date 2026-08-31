#!/bin/sh

. ./lib.sh

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
	menu $INPUT
	EXIT=$?
done
exit 0

menu() {
	case $INPUT in
	1) echo "Adding new data right after this message" ;;
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
