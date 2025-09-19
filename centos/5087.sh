#!/bin/bash
output=$(grep -E '^PASS_MAX_DAYS' /etc/login.defs)
echo "$output"

value=$(echo "$output" | awk '{print $2}')

if [ -n "$value" ] && [ "$value" -le 90 ]; then
	  echo "PASS_MAX_DAYS is 90 or less"
  else
	    echo "PASS_MAX_DAYS is greater than 90 or not set"
fi
