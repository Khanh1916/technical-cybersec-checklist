#!/bin/bash
output=$(findmnt /dev/shm)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "/dev/shm is configured"
    else
	      echo "/dev/shm is not configured"
fi
