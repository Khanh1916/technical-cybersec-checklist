#!/bin/bash
output=$(rpm -q bind unbound)
echo "$output"

if [[ "$output" == *"bind is not installed"* && "$output" == *"unbound is not installed"* ]]; then
	  echo "DNS servers (bind, unbound) are not installed"
  else
	    echo "One or more DNS servers (bind, unbound) are installed"
fi
