#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please Provide Software names as Command Line Arguments"
	exit 1
fi

if [ $(id -u) -ne 0 ]
then
	echo "Please run from root user or with sudo privilages"
	exit 2
fi

for software in $@
do
	if which $software &> /dev/null
	then
		echo "Already $software is installed"
	else
		echo "Installing $software"
		sudo yum install $software -y &> /dev/null
		if [ $? -eq	0 ]
		then
			echo "Succesfully installed $software"
		else
			echo "Unable to install $software"
		fi
	fi
done

