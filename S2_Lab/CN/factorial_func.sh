#!/bin/bash

factorial(){
	f=1
	i=1
	while [ $i -le $1 ];do
		f=$((f*i))
		((i++))
	done
	echo $f
}
echo "Enter a Number:"
read n
echo "Factorial of $n is: $(factorial $n)"
