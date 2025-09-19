#!/bin/bash
output=$(findmnt -l | grep /home | grep nodev)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "nodev is set on /home"
    else
	      echo "nodev is not set on /home"
fi
