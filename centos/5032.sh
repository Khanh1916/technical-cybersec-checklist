#!/bin/bash
output=$(systemctl is-enabled chronyd 2>&1)
echo "$output"

if [ "$output" = "enabled" ]; then
	  echo "chronyd service is enabled"
  else
	    echo "chronyd service is not properly configured"
fi
