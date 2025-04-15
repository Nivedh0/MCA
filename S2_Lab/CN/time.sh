#!/bin/bash
hour=$(date +%H)
if [ $hour -le 12 ];
then
	echo "Good Morning"
elif [ $hour -le 18 ];
then
	echo "Good afternoon"
else
	echo "Good Evening"
fi
