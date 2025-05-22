 Q)Write a shell script to check whether the given number is odd or even.  

#!/bin/bash
clear
read -p "Enter the value : " a
if (( $a % 2 == 0 ))
then
	echo "$a is even"
else
	echo "$a is odd"
fi


Output:
Enter the value : 5
5 is odd



Algorithm:
Step 1: Ask the user to enter a value.
Step 2: Store the input in a variable a.
Step 3: Check if a is divisible by 2 (even).
Step 4: If true, print that the number is even.
Step 5: If false, print that the number is odd.