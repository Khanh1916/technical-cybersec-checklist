#!/bin/bash
output=$(rpm -q audit)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "Audit is not installed"
  else
	    echo "Audit is installed"
fi
