#!/bin/bash
echo "checking disk usage in Linux system"
disk_size=`df -h | grep "/dev/xvda" | awk '{print $5}' | cut -d '%' -f 1`
echo "$disk_size % of disk is filled"
if [ $disk_size -gt 80 ];
then
   echo "Disk utilization is greater than 80%, expand disk or delete files soon"
else
   echo "Enough disk is available"
fi
