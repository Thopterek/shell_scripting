#!/bin/sh
INPUT=yo
# those spaces before and after "$" matter
while [ "$INPUT" != "bye" ]; do
	echo "Input anything to echo, to quit say (bye)"
	read INPUT
	echo "Input was $INPUT"
done

# now going for always true
while :; do
	echo "type in and control c to quit"
	read INPUT
	echo "$INPUT"
done
