Q)Write a shell script to test if three numbers form a triangle.    


#!/bin/bash
clear
read -p "Enter the 3 sides of triangle : " a b c
if (( $a + $b <= $c || $b + $c <= $a || $c + $a <= $b ))
then
	echo "The triangle cannot be formed "
else
	echo "The triangle can be formed "
fi


Output:
Enter the 3 sides of triangle : 5 10 15
The triangle cannot be formed





Algorithm:
Step 1: Ask the user to enter the three sides of the triangle.
Step 2: Store the inputs in variables a, b, and c.
Step 3: Check if the sum of any two sides is less than or equal to the third side.
Step 4: If true, print that the triangle cannot be formed.
Step 5: If false, print that the triangle can be formed.