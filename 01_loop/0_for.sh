#!/bin/sh

for i in 1 2 3 4 5; do
	echo "Looping ... number $i"
done

for i in hello 1 * 2 bye bye; do
	echo "Looping on set with -> $i"
done

for wait_a_minute in *; do
	echo "Double check $wait_a_minute"
done

for file in *; do
	echo "File $file"
	# let's not change all of the files weirdly
	#	mv new_type.asm ${file}.asm
	#	echo "Added extra ASM to new_type.asm? -> $file"
done

echo "Create directories in non loop"
mkdir rc{0,1,2,3,S}.d
echo "Checking the result $?"
ls
echo "Removing directories same way"
rm -rf rc{0,1,2,3,S}.d
echo "Checking the result $? && getting new directories"

for run in 0 1 2 3 S; do
	mkdir rc${run}.d
done
ls
echo "Removing them now"
rm -rf rc{0,1,2,3,S}.d
ls
