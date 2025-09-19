#!/bin/bash
output=$(ulimit -c)

echo "$output"

if [[ "$output" == "0" ]]; then
	  echo "core dump is disabled"
  else
	    echo "core dump is enabled"
fi
