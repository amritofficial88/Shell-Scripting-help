#!/bin/bash

//Finding log files modified 7 days ago and moving it to one folder
find /logs/app/audit -name "*.tar.gz" -mtime +7 -exec mv {} /backup_logs/logs/ \;

//Finding log files modified 30 days ago and removing them
find /backup_logs/logs/ -name "*.tar.gz" -mtime +30 -exec rm {}  \;
