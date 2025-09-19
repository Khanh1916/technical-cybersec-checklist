#!/bin/bash
output=$(findmnt /tmp)

echo "$output"

if echo "$output" | grep -q "/tmp"; then
	    echo "/tmp is configured"
	        exit 0
	else
		    echo "/tmp is not configured"
		        exit 1
fi
