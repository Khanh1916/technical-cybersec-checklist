#!/bin/bash
output=$(findmnt /var)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "/var is configured"
    else
	      echo "/var is not configured"
fi
