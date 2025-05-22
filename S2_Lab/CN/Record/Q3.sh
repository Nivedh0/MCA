Q)Write a shell script program to check the largest among three numbers.

#!/bin/bash
clear
read -p "Enter 3 numbers : " a b c
if [[ $a -gt $b  && $a -gt $c ]]
then
	echo "$a is the Largest"
elif [[ $b -gt $c ]]
then
	echo "$b is the Largest"
else
	echo "$c is the largest"
fi


Output:
Enter 3 numbers : 5 10 15
15 is the largest

Algorithm:
Step 1: Ask the user to enter three numbers.
Step 2: Store the inputs in variables a, b, and c.
Step 3: Compare a with b and c to check if a is the largest.
Step 4: If a is the largest, print that a is the largest.
Step 5: If b is larger than c, print that b is the largest.\
Step 6: If neither of the above conditions is true, print that c is the largest.