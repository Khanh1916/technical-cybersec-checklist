#!/bin/bash
output=$(rpm -q xinetd)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "xinetd is not installed"
  else
	    echo "xinetd is installed"
fi
