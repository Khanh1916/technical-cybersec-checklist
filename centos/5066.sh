#!/bin/bash
output=$(stat /etc/hosts.allow | grep "Access:")
echo "$output"

perm=$(stat -c "%a" /etc/hosts.allow)

if [ "$perm" = "640" ]; then
	  echo "/etc/hosts.allow permissions are correct"
  else
	    echo "/etc/hosts.allow permissions are incorrect"
fi
