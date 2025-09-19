#!/bin/bash
output=$(findmnt -l | grep /dev/shm | grep nosuid)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "nosuid is set on /dev/shm"
    else
	      echo "nosuid is not set on /dev/shm"
fi
