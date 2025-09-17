#!/bin/bash

read -p "What is your name: " name
read -sp "Enter your password: "  password
echo $name
echo $password
read -p "The screen will time out in 5 seconds: " -t 5
