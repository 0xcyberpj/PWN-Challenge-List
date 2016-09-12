#!/bin/bash

if [ "$#" -eq 1 ]; then
    pid=`ps -A | grep -w $1 | awk '{print $1}'`
    if [ ! "$pid" ]; then
        echo "No such process: $1"
    else
       echo "Find process $1 with pid: $pid"
       gdb -p $pid
    fi
else
    echo "Usage: ./gdbattach.sh [process name]"
fi 
