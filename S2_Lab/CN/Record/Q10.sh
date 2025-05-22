Q)Write a shell script program to calculate the factorial of a given number.  


#!/bin/bash
clear
read -p "Enter the Value : " n
f=1
i=1
if [ $n -eq 0 ]
then
	echo "Factorial of $n : 1"
else
	while [ $i -le $n ]
        do
                f=$(( f * i ))
		i=$((i + 1))
        done
fi
echo "Factorial of $n is : $f"

Output:
Enter the Value : 5
Factorial of 5 is : 120



Algorithm:
Step 1: Ask the user to enter a value and store it in variable n.
Step 2: Initialize the variables f to 1 (for factorial) and i to 1.
Step 3: Check if n is 0. If true, print that the factorial of 0 is 1.
Step 4: If n is not 0, use a while loop to calculate the factorial:
        Multiply f by i in each iteration.
        Increment i by 1 after each iteration.
Step 5: After the loop, print the calculated factorial of n.


