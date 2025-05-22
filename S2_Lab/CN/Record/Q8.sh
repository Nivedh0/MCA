Q)Write a shell script to check if a number is prime. 


#!/bin/bash
clear
read -p "Enter the value : " p
if [ $p -eq 1 ]
then
	echo "$p is not prime or composite "
else
	for (( i=2 ;i< p/2;i++ ))
	do
		if (( p % i ==0 ))
		then
			echo "$p is not a prime number "
			exit 0 
		fi
	done
	echo "$p is a prime number "
fi


Output:
Enter the value : 5
5 is a prime number







Algorithm:
Step 1: Ask the user to enter a value and store it in variable p.
Step 2: Check if p is equal to 1.
If true, print that p is neither prime nor composite.
Step 3: If p is not 1, use a loop to check if p is divisible by any number from 2 to p/2.
Step 4: If p is divisible by any number, print that p is not a prime number and exit.
Step 5: If no divisor is found, print that p is a prime number.