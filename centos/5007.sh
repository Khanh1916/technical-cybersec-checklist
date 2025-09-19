#!/bin/bash
output=$(findmnt -l | grep /tmp)

echo "$output"

if echo "$output" | grep -q noexec; then
	    echo "noexec option is set on /tmp"
	        exit 0
	else
		    echo "noexec option is not set on /tmp"
		        exit 1
fi
