#!/bin/bash
output=$(sestatus | grep "SELinux status")

echo "$output"

if [[ "$output" == *"enabled"* ]]; then
	  echo "SELinux is enabled"
  else
	    echo "SELinux is disabled"
fi
