#!/bin/bash

#Enter the username
read -p "Enter username" username

#Enter password
read -p "Enter password" password

#Adding user
useradd -m "${username}"

#Adding password
echo ${password} | passwd --stdin ${username}

#Forcing password to expire after every login
passwd -e ${username}
