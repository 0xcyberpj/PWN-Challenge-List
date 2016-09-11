#!/bin/bash

if [ "$#" -eq 1 ]; then
    pid=`ps -A | grep -w $1 | awk '{print $1}'`
    if [ ! "$pid" ]; then
        echo "No such process: $1"
    else
       kill -9 $pid
    fi
fi 
