#!/bin/bash

#Display the UID
echo "Your UID is ${UID}"

#Displaying the username
username=`id -nu`
echo "Your Username is ${username}"

#Finding root user or not
if [[ ${UID} -eq 0 ]]
then
	echo "Congratulations, you are root user"
else
	echo "you are not root user, try again."
fi
