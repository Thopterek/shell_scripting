#!/bin/sh

# procedures:
# does not return a value but may produce output
# function
# returns a single value with no output
# here both calling fn

calling_from_lib() {
	echo "I was called as : $@ from library"
	x=2
}
