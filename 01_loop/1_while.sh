#!/bin/sh
INPUT=yo
# those spaces before and after "$" matter
while [ "$INPUT" != "bye" ]; do
	echo "Input anything to echo, to quit say (bye)"
	read INPUT
	echo "Input was $INPUT"
done

# now going for always true
#while :; do
# and back to skipping this one
while [ "$INPUT" != "bye" ]; do
	echo "type in and control c to quit"
	read INPUT
	echo "$INPUT"
done

# testing case version
while read input_text; do
	case $input_text in
	msg) echo Information ;;
	*) echo Idk: $input_text ;;
	esac
done <random.asm

echo "------ BREAK ------"

# simpler reading of the file
while read text; do
	echo $text
done <random.asm
