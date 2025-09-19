#!/bin/bash
output=$(findmnt -l | grep /dev/shm | grep nodev)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "nodev is set on /dev/shm"
    else
	      echo "nodev is not set on /dev/shm"
fi
