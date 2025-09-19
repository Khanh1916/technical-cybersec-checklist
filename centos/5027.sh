#!/bin/bash
output=$(rpm -q setroubleshoot 2>&1)

echo "$output"

if [[ "$output" == *"is not installed"* ]]; then
	  echo "setroubleshoot is not installed"
  else
	    echo "setroubleshoot is installed"
fi
