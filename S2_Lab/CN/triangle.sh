#!/bin/bash
echo "Enter three sides of triangle:"
read a b c
if (( a + b > c && a + c > b && b + c > a )); then
        echo "valid"
    else
        echo "invalid"
        exit 1
fi
if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ] 
then
	echo "Equilateral"
elif [ $a -eq $b ] || [ $a -eq $c ] || [ $b == $c ]
then
	echo "Isosceles"
else
	echo "Scalene"
fi
