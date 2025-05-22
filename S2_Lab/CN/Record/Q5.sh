Q)Write a shell script to identify triangle type (Isosceles, Equilateral, Scalene). 

#!/bin/bash
clear
read -p "Enter the sides of the triangle : " a b c
if [[ $a -eq $b && $b -eq $c ]]
then
	echo "The triangle is Equilateral "
elif [[ $a -eq $b || $a -eq $c || $b -eq $c ]]
then
	echo "The triangle is Isosceles "
else
	echo "The triangle is Scalene "
fi

Output:
Enter the sides of the triangle : 5 5 5
The triangle is Equilateral





Algorithm:
Step 1: Ask the user to enter the sides of the triangle.
Step 2: Store the inputs in variables a, b, and c.
Step 3: Check if all three sides are equal (equilateral).
Step 4: If true, print that the triangle is equilateral.
Step 5: If false, check if any two sides are equal (isosceles).
Step 6: If true, print that the triangle is isosceles.
Step 7: If none of the above conditions are true, print that the triangle is scalene.