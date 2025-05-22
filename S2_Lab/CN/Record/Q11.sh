Q)Write a shell script program to generate a multiplication table pattern.  


#!/bin/bash
clear
read -p "Enter the value : " m
i=1
echo "Multiplication table of $m :"
while [ $i -le 10 ]
do
	echo " $i * $m = $(( i * m))"
	(( i++ ))
done


Output:
Enter the value : 5
Multiplication table of 5 :
 1 * 5 = 5
 2 * 5 = 10
 3 * 5 = 15
 4 * 5 = 20
 5 * 5 = 25
 6 * 5 = 30
 7 * 5 = 35
 8 * 5 = 40
 9 * 5 = 45
 10 * 5 = 50


Algorithm:
Step 1: Ask the user to enter a value and store it in variable m.
Step 2: Initialize a variable i to 1.
Step 3: Print the message "Multiplication table of $m".
Step 4: Use a while loop to iterate from 1 to 10.
Step 5: In each iteration, print the multiplication result of i and m.\
Step 6: Increment i by 1 after each iteration.

