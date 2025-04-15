#!/bin/bash
echo "Enter the year:"
read yr

if (( ($yr % 4 == 0)  ||  ($yr % 400 == 0)  &&  ($yr % 100 != 0) ))
then
	echo "leap year"
else
	echo "not leap year"
fi
