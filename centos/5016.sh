#!/bin/bash
output=$(findmnt /home)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "/home is configured"
    else
	      echo "/home is not configured"
fi
