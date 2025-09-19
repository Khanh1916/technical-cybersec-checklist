#!/bin/bash
output=$(systemctl is-enabled cups 2>&1)
echo "$output"

if [[ "$output" == "disabled" || "$output" == *"not found"* ]]; then
	  echo "CUPS print server is disabled or not found"
  else
	    echo "CUPS print server is enabled"
fi
