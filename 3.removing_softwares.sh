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
		echo "Already $software is installed on the machine"
		echo `$software version`
		echo "Removing $software"
		sudo yum remove $software -y &> /dev/null
		if [ $? -eq	0 ]
		then
			echo "Succesfully removed $software"
		else
			echo "Unable to remove $software"
		fi
	else
		echo "$software is not installed on the machine"
	fi
done

