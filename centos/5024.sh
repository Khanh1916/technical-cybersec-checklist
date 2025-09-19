#!/bin/bash
output=$(sestatus | grep "SELinux mode")

echo "$output"

if [[ "$output" == *"enforcing"* || "$output" == *"permissive"* ]]; then
	  echo "SELinux is enabled"
  else
	    echo "SELinux is disabled"
fi
