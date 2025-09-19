#!/bin/bash
output=$(findmnt /var/log/audit)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "/var/log/audit is configured"
    else
	      echo "/var/log/audit is not configured"
fi
