Q)Write a shell script program that displays a different message based on the current time of the day.  


#!/bin/bash
clear
hour=$(date +"%H")

if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    echo "Good Morning!"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    echo "Good Afternoon!"
elif [ $hour -ge 18 ] && [ $hour -lt 21 ]; then
    echo "Good Evening!"
else
    echo "Good Night!"
fi

Output:
Good Morning!


Algorithm:
Step 1: Get the current hour using the date command and store it in the variable hour.
Step 2: Check if the hour is between 5 and 12 (morning).
If true, print "Good Morning!".
Step 3: If the hour is between 12 and 18 (afternoon), print "Good Afternoon!".
Step 4: If the hour is between 18 and 21 (evening), print "Good Evening!".
Step 5: If none of the above conditions are true, print "Good Night!".