#!/bin/bash
output=$(findmnt -l | grep /dev/shm | grep noexec)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "noexec is set on /dev/shm"
    else
	      echo "noexec is not set on /dev/shm"
fi
