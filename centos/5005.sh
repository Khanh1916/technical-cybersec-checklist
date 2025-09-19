#!/bin/bash
output=$(findmnt -l | grep /tmp)

echo "$output"

if echo "$output" | grep -q nodev; then
	    echo "nodev option is set on /tmp"
	        exit 0
	else
		    echo "nodev option is not set on /tmp"
		        exit 1
fi
