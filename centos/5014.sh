#!/bin/bash
output=$(findmnt /var/log)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "/var/log is configured"
    else
	      echo "/var/log is not configured"
fi
