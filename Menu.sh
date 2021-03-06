
 while :
  do
     clear
     # Prints all options.
     echo " "
     echo " Please select an option: "
     echo " "
     echo "1. Create histogram"
     echo "2. Encryption"
     echo "3. Delete oldest"
     echo "4. Convert numbers"
     echo "5. Orgainzed files"
     echo "6. Exit"
     
     # After choosing, necessary inputs are asked. According to these program will be executed.
     read choice
     case $choice in
     
        1) echo "Please enter a file name:"
        read input
        echo " "
        ./ex1.sh $input ; read ;;
        
 	2) echo "Please enter a word:"
        read input
        echo "Please enter a number:"
        read input1
        ./ex2.sh $input $input1 ; read ;;
        
 	3) echo "Please enter a file name (optional):"
        read input
        echo " "
        ./ex3.sh $input ; 	read ;;
        
 	4) echo "Please enter a file name:"
        read input
        echo " "
       ./ex4.sh $input ; read ;;
        
 	5) echo "Please enter a file name:"
        read input
        echo "Do you want run this program recursively? (y/n)"
        read input1
        
        # Checks input whether it is y or n. 
        if [ $input1 = y ]
        then 
        ./ex5.sh -R "$input" ; 
        
        elif [ $input1 = n ]
        then 
        ./ex5.sh "$input" ; 
        fi
        
        read ;;
        
 	6) exit 0 ;;
 	
 	# If input is not between 1-6, this message will be printed.
 	*) echo "Opps!!! Please select choice 1, 2, 3, 4, 5 or 6.";
 	   echo "Press a key. . ." ; read ;;
     esac
  done
