# Takes word and number as a command line argument.
word=$1
number=$2

# Contains array which holds alphabet.
alphabet=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

# Splits word and number character by character and stores these charactes in the array.
wordArray=( `echo $word | grep -o .`)
numberArray=( `echo $number | grep -o .`)

# Stores length of word, number and alphabet.
lengthWord=${#word}
lengthNumber=${#number}
lengthAlphabet=${#alphabet[@]}

# Stores encrypted word.
final=""

# Checks length of word and number. If these are equal execute the remaind part.
if [ $lengthWord -eq $lengthNumber ]
then

# Calculates encrypted word character by character.
for (( i=0; i<$lengthWord; i++ ))
do
	for (( j=0; j<$lengthAlphabet; j++ ))
		do
		if [ ${wordArray[i]} = ${alphabet[j]} ]
		then
		
		final+="${alphabet[(j+${numberArray[i]})%26]}"
		
		fi
		done
done

# Checks length of number. If it is equal to 1 execute the remaind part.
elif [ $lengthNumber -eq 1 ]
then

# Calculates encrypted word character by character.
for (( i=0; i<$lengthWord; i++ ))
do

	for (( j=0; j<$lengthAlphabet; j++ ))
		do
		if [ ${wordArray[i]} = ${alphabet[j]} ]
		then
		
		final+="${alphabet[(j+${numberArray[0]})%26]}"
		
		fi
		done
done

# If length of number is not equals to length of word or 1, prints an error message.
else
	echo "Numbers length should be equals to word length or 1."
fi

# Prints encrypted word
echo "$final"
