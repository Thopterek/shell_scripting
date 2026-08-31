# here is the library

# could be done with exit but hey it looks nice
prog_start() {
	echo "###############################"
	echo "--- Starting up phone book ---"
	echo "there will be instructions below"
	if [ "$AC" -eq "0" ]; then
		echo "No fast adding yet so good that you passed nothing"
	else
		echo "Sadly we have to ignore those params for now:"
		echo "$AV"
	fi
	echo "--- enjoy (b)playing around ---"
	echo "To continue click enter: "
	read INPUT
	if [ "$INPUT" = "" ]; then
		clear
		return 0
	else
		echo "Wrooooong, bye bye"
		return 1
	fi
}
