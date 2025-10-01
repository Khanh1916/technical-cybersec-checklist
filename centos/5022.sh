#!/bin/bash
output=$(rpm -q prelink 2>&1)

echo "$output"

if [[ "$output" == *"is not installed"* ]]; then
	  echo "prelink is not installed"
  else
	    echo "prelink is installed"
fi
