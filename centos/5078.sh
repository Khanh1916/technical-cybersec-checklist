#!/bin/bash
output=$(stat /var/log/messages)
echo "$output"

perm=$(stat -c "%a" /var/log/messages)

if [ "$perm" = "640" ]; then
	  echo "/var/log/messages permissions are correct"
  else
	    echo "/var/log/messages permissions are incorrect"
fi
