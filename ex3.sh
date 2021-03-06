# If command line argument is exist executes the remaining part. 
if [ -n "$1" ]
	then
	# Changes directory as a command line argument.
	cd "$1"
	# Lists all files according to modification time. And takes the oldest one.
	string="$(ls -t | tail -n1)"
	# Asks for deleting oldest file.
	rm -i $string
	fi

# Checks command line argument. If command line argument is not exist executes the remaining part in the current directory. 
if [ -z "$1" ]
	then
	# Lists all files according to modification time. And takes the oldest one.
	string="$(ls -t | tail -n1)"
	# Asks for deleting oldest file.
	rm -i $string
	fi

