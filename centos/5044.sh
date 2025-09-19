#!/bin/bash
output=$(rpm -q samba)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "Samba is not installed"
  else
	    echo "Samba is installed"
fi
