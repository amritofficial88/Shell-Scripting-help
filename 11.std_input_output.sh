#!/bin/bash

#Standard Output
echo "secret" > password
cat password

#Standard Input
sudo passwd --stdin anil < password      //Here we are sending password as a input to the user anil
