#!/bin/bash
output=$(useradd -D | grep INACTIVE)
echo "$output"

value=$(echo "$output" | awk -F= '{print $2}')

if [[ "$value" -ge 0 && "$value" -le 30 ]]; then
	  echo "INACTIVE is set to $value (30 or less)"
  else
	    echo "INACTIVE is set to $value (not within 0 to 30)"
fi
