#!/bin/bash
echo "Enter the upper limit:"
read limit

echo "Even numbers up to $limit are:"

for (( i=2; i<=limit; i+=2 ))
do
    echo $i
done
