#!/bin/bash
output=$(rpm -q tcp_wrappers)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "tcp_wrappers is not installed"
  else
	    echo "tcp_wrappers is installed"
fi
