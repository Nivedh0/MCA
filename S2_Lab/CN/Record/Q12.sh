Q)Write a shell script program to calculate the factorial of a given number Using Function .

#!/bin/bash
clear
factorial() {
  f=1
  i=1
  while [ $i -le $1 ]; do
    f=$((f * i))
    ((i++))
  done
  echo $f
}

read -p "Enter a number : " n

echo "Factorial of $n is: $(factorial $n)"


Output:
Enter a number : 5
Factorial of 5 is: 120


------------------------------------


Algorithm:

Factorial :
Step 1: Initialize f to 1 and i to 1.
Step 2: Use a loop to multiply f by i until i reaches the input number.
Step 3: Return the value of f.

Main :
Step 1: Ask the user to enter a number and store it in variable n.
Step 2: Call the factorial function with n as the argument.
Step 3: Display the result returned by the factorial function.