#!/bin/bash

echo "Welcome to service check status script"
read -p "Enter the service to check its status: " service_name
if [ -z $service_name ]
then
	echo "Please enter a valid service name"
else
	systemctl status $service_name
fi
