#!/bin/bash
output=$(grep -E '^PASS_WARN_AGE' /etc/login.defs)
echo "$output"

value=$(echo "$output" | awk '{print $2}')

if [[ -n "$value" && "$value" -ge 7 ]]; then
	  echo "PASS_WARN_AGE is set to $value"
  else
	    echo "PASS_WARN_AGE is not set or less than 7"
fi
