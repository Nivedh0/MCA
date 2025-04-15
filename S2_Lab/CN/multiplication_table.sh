#!/bin/bash

echo "Enter the upper limit for the multiplication tables:"
read limit
echo "Multiplication table for $limit:"
for (( j=1; j<=10; j++ ))
do
	echo "$limit x $j = $(( limit * j ))"
done


