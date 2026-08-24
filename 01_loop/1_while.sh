#!/bin/sh
INPUT=yo
# those spaces before and after "$" matter
while [ "$INPUT" != "bye" ]; do
	echo "Input anything to echo, to quit say (bye)"
	read INPUT
	echo "Input was $INPUT"
done
