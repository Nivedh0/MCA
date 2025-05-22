Q)Write a shell script program to test whether given year is a leap year.  

#!/bin/bash
clear
read -p "Enter the year : " l
if (( $l % 400 == 0 ))
then
	echo "$l is a leapyear "
elif (( $l % 4 == 0 && $l % 100 !=0 ))
then
	echo "$l is a leapyear"
else
	echo "$l is not a leapyear"
fi

Output:
Enter the year : 2000
2000 is a leapyear



Algorithm:
1. Step 1: Ask the user to enter a year.
2. Step 2: Store the input in variable `l`.
3. Step 3: Check if the year is divisible by 400.
4. Step 4: If true, print that the year is a leap year.
5. Step 5: If false, check if the year is divisible by 4 but not by 100.
6. Step 6: If true, print that the year is a leap year.
7. Step 7: If none of the above conditions are true, print that the year is not a leap year.