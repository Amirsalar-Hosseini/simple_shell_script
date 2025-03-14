#!/bin/bash

##################################
# AUthor: amirsalar
# Version: 1.0.0
# Date: 2025-Mar-12
# Description: first script
# Usage: ./scripts (if this program has execute chmod)
##################################

name="amir"
age=20 # this type look we must dont change value of this variable (symbolic and means if we change this variable, thats dont give error)

echo "hello , my name is ${name}, Im $(( $age + 2 )) years old"


if [ $name == "ali" ]
then
	echo " fadat shaaaaam!  XD "
fi

if [ $age == 21 ]
then
	echo " you are not here "
elif [ $name == "amir" ]
then
	echo "mybe you are here so i will go to another test"
	if [ $age == 20 ]
	then
		echo "yeeees!"
	else
		echo "nooooooo!"
	fi
fi
