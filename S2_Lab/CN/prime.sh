#!/bin/bash
echo "Enter a Number:"
read a
if [ $a -le 1 ]
then
	echo "$a is not a prime number"
fi
for (( i=2;i<$a;i++ ))
do
	if [ $((a % i)) -eq 0 ]
	then
		echo "$a is not a prime number"
		exit
	fi
done
	echo "$a is a prime number"

