#!/bin/bash
output=$(findmnt -l | grep /tmp)

echo "$output"

if echo "$output" | grep -q nosuid; then
	    echo "nosuid option is set on /tmp"
	        exit 0
	else
		    echo "nosuid option is not set on /tmp"
		        exit 1
fi
