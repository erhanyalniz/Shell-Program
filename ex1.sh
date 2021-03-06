# Takes file name as a command line argument.
file="$1"

# Contains array which holds all numbers between 0-9.
numbers=( "0 " "1 " "2 " "3 " "4 " "5 " "6 " "7 " "8 " "9 " )

# Reads the file line by line. 
while IFS= read line
do
# Checks if the line is between 0-9. If the condition is true it puts "*" in array.
# If it is false it prints an error message.
if [[ "$line" -le 9 && "$line" -ge 0 ]]
	then
	numbers[$line]+="*"
else	
	echo "There is invalid input: $line"
fi
# Checks if the file is finished or not.	
done <"$file"

# Prints the array line by line.
for (( i=0; i<=9; i++ ))
do
echo "${numbers[i]}"
done 




