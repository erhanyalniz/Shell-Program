# Takes file name as a command line argument.
file="$1"

# Stores the final text.
text=""

# Reads the file character by character.
while read -r -n1 char;
do

	# If the number is detected, changes the number to word version and add to text variable.
	if [ "$char" = 0 ]
		then
		text+=zero
	elif [ "$char" = 1 ]
		then
		text+=one
	elif [ "$char" = 2 ]
		then
		text+=two
	elif [ "$char" = 3 ]
		then
		text+=three
	elif [ "$char" = 4 ]
		then
		text+=four
	elif [ "$char" = 5 ]
		then
		text+=five
	elif [ "$char" = 6 ]
		then
		text+=six
	elif [ "$char" = 7 ]
		then
		text+=seven
	elif [ "$char" = 8 ]
		then
		text+=eight
	elif [ "$char" = 9 ]
		then
		text+=nine
		
	# If there is blank, adds blank character to text variable.
	elif [  -z "$char" ]
		then
		text+=" "
	# For other characters, adds the character directly to text variable.
	else
		text+=$char
		fi
done < $file

# Deletes the context of txt file. 
> $file

# Prints final text in the txt file.
echo "$text" >> $file
 
echo " Context of $file is changed successfully"

