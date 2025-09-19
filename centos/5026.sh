#!/bin/bash
output=$(sestatus | grep "Current mode")

echo "$output"

if [[ "$output" == *"enforcing"* ]]; then
	  echo "SELinux is in enforcing mode"
  else
	    echo "SELinux is not in enforcing mode"
fi
