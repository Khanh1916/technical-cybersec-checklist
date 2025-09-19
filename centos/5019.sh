#!/bin/bash
output=$(rpm -q aide 2>&1)

if [[ "$output" != *"is not installed"* ]]; then
	  echo "$output"
	    echo "aide is installed"
    else
	      echo "package aide is not installed"
fi
