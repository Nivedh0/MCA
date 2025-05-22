Q) Write a shell script to find the sum of numbers up to a range.  


#!/bin/bash
clear
read -p "Enter the limit : " r
sum=0
for (( i=0;i<=r;i++ ))
do
	sum=$(( sum + i ))
done
echo "The sum upto $r : $sum "


Output:
Enter the limit : 5
The sum upto 5 : 15






Algorithm:
Step 1: Ask the user to enter a limit and store it in variable r.
Step 2: Initialize a variable sum to 0.
Step 3: Use a loop to iterate from 0 to r.
Step 4: Add each value of i to sum in each iteration.
Step 5: After the loop, print the total sum from 0 to r.