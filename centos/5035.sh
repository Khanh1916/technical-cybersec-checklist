#!/bin/bash
output=$(rpm -q xorg-x11-server-common)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "X Windows is not installed"
  else
	    echo "X Windows is installed"
fi
