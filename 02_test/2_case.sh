#!/bin/sh

echo "what's up"
while :; do
	read INPUT
	case $INPUT in
	hello) echo "you found keyword hello" ;;
	bye)
		echo "well then bye"
		break
		;;
	*) echo "try hello and later bye" ;;
	esac # just case backwards just like with if and fi
done
echo "Dang"
