#!/bin/bash
output=$(grep -E '^PASS_MIN_DAYS' /etc/login.defs)
echo "$output"

value=$(echo "$output" | awk '{print $2}')

if [[ -n "$value" && "$value" -ge 1 ]]; then
	  echo "PASS_MIN_DAYS is set to $value"
  else
	    echo "PASS_MIN_DAYS is not set or less than 1"
fi
