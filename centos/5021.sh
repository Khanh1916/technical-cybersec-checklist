#!/bin/bash
output=$(sysctl kernel.randomize_va_space)

echo "$output"

if [[ "$output" == "kernel.randomize_va_space = 2" ]]; then
	  echo "ASLR is enabled"
  else
	    echo "ASLR is not properly enabled"
fi
