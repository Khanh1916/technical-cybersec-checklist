#!/bin/bash
output=$(rpm -q libselinux 2>&1)

echo "$output"

if [[ "$output" == *"is not installed"* ]]; then
	  echo "libselinux is not installed"
  else
	    echo "libselinux is installed"
fi
