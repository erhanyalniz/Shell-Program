# If there is one command line argument this part will be executed in current directory.
if [  -z "$2" ]
then
	# Opens a new directory and copies the files in this directory.
	mkdir copied
	cp $1 copied
fi



# If there are two command line arguments this part will be executed. First argument should be "-R".
if [[ -n "$2" && $1 = "-R" ]]
then

# Stores all subdirectories in array.
	array=($(find -type d))
		
	
		
	# Stores first directory name.
	main="$PWD"
	
	# Will be executed for every subdirectories.
	for (( i=0; i<${#array[@]}; i++ ))
	do
		
		# Changes directory to subdirectory.
		cd "${array[i]}"
		
		# Opens a new directory and copies the files in this directory.
		mkdir copied
		cp $2 copied
		
		# Changes directory to first one.
		cd "$main"
	done 

fi



