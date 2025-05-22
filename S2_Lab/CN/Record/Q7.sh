Q)Write a shell script to print even numbers in a range.   


#!/bin/bash
clear
read -p "Enter the range : " i n
echo -n "Even numbers : "
for (( ; i<=n;i++ ))
do
	if (( $i % 2 == 0 ))
	then
		echo -n " $i "
	fi
done


Output:
Enter the range : 1 10
Even numbers :  2 4 6 8 10






Algorithm:
Step 1: Ask the user to enter a range, with i as the starting value and n as the ending value.
Step 2: Store the inputs in variables i and n.
Step 3: Print the label "Even numbers".
Step 4: Use a loop to iterate from i to n.
Step 5: Inside the loop, check if the current number is even.
Step 6: If true, print the number.