#!/bin/bash
echo "Enter the upper limit:"
read limit
sum=0
for (( i=1; i<=limit; i++ ))
do
    sum=$((sum + i))
done

echo "The sum of numbers from 1 to $limit is: $sum"

