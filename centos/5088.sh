#!/bin/bash
output=$(chage -l root | grep "Password expires")
echo "$output"

if echo "$output" | grep -q "Never"; then
	  echo "Password expiration is not set"
  else
	    echo "Password expiration is set"
fi
