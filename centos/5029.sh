#!/bin/bash
output=$(grep -i "banner" /etc/issue)

if [[ -n "$output" ]]; then
	  echo "$output"
	    echo "Warning banner is set"
    else
	      echo "Warning banner is not set"
fi
