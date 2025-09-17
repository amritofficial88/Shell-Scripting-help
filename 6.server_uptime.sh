#!/bin/bash
 
uptime=$( /usr/bin/uptime | awk '{print $3}' )    # using awk command to get only minutes part

echo $uptime
#taken a sample input of 60 minutes
min=60
#logical operator to check the server uptime 
if [ $uptime -ge $min ]
	echo "Server uptime is greater than 60 minutes, so shutting down in next 15 minutes"
        then /sbin/shutdown -r +15
# +15 for extra 15min to shutdown
else
       echo "Server uptime is less than 60 minutes"	
fi
exit 0

