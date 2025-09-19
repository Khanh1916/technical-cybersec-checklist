#!/bin/bash
output=$(rpm -q rsh)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "rsh service is not installed"
  else
	    echo "rsh service is installed"
fi
