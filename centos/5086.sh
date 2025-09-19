#!/bin/bash
output=$(grep -i "^ENCRYPT_METHOD" /etc/login.defs)
echo "$output"

if [[ "$output" =~ ENCRYPT_METHOD[[:space:]]+SHA512 ]]; then
	  echo "ENCRYPT_METHOD is SHA512"
  else
	    echo "ENCRYPT_METHOD is not SHA512 or not set"
fi
