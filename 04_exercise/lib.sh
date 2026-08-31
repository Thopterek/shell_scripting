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

display_menu() {
	echo "###################################"
	echo "----- Welcome to address book -----"
	echo "use only a number to choose options"
	echo "1) Adding new data (name, email, .)"
	echo "2) Remove data from the book"
	echo "3) Edit the data inside the book"
	echo "4) Search the records for data"
	echo "5) Exit"
	echo -n "Choose one of the options above: "
}

check_input() {
	echo $INPUT | grep "[1-5]" >/dev/null 2>&1
	STATUS=$?
	while [ "$STATUS" != "0" ]; do
		echo -n "Error: $INPUT is not a supported option, try again: "
		read INPUT
		echo $INPUT | grep "[1-5]" >/dev/null 2>&1
		STATUS=$?
	done
	clear
	echo "--- Menu for option: $INPUT ---"
}
