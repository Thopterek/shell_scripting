# no extra setting up for SH so it doesn't spawn extra shell
# procedures:
# does not return a value but may produce output
# function
# returns a single value with no output
# here both calling fn

calling_from_lib() {
	echo "I was called as : $@ from library"
	x=2
}

non_change() {
	echo "\$1 is $1"
	echo "\$2 is $2"
	echo "We can only change variable like $a saved as a"
	a="Goodbye"
}

factorial() {
	if [ "$1" -gt "1" ]; then
		i=$(expr $1 - 1)
		j=$(factorial $i)
		k=$(expr $1 \* $j)
		echo $k
	else
		echo 1
	fi
}

return_with() {
	FIRST=$2
	useradd -c "${FIRST}"
	if [ "$?" -ne "0" ]; then
		return 1
	fi
}
