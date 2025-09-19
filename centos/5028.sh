#!/bin/bash
output=$(rpm -q mcstrans 2>&1)

echo "$output"

if [[ "$output" == *"is not installed"* ]]; then
	  echo "mcstrans is not installed"
  else
	    echo "mcstrans is installed"
fi
