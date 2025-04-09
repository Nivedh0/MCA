#!/bin/bash
echo "Enter a Number:"
read n
o=$n
sum=0
while [ $n -gt 0 ]
do
	digit=$((n % 10))
	sum=$((sum + digit * digit * digit))
	n=$((n / 10))
done
if [ $sum -eq $o ]
then
	echo "$o is Amstrong"
else
	echo "$o is not Amstrong"
fi
