#!/bin/bash
output=$(timedatectl | grep "System clock synchronized")
echo "$output"

if echo "$output" | grep -q "yes"; then
	  echo "System clock is synchronized correctly"
  else
	    echo "System clock is NOT synchronized"
fi
