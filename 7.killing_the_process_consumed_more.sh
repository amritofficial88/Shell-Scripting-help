#!/bin/bash

process_ID=$(ps -ef | grep <process_id> | awk '{print $2}')

echo "Process ID is : $process_ID"
if [ -n "${process_ID}" ]; then
    echo "Stopping the process with ID: $process_ID"
    kill -9 $process_ID
fi

