#!/bin/bash
output=$(stat /etc/hosts.deny | grep "Access:")
echo "$output"

perm=$(stat -c "%a" /etc/hosts.deny)

if [ "$perm" = "640" ]; then
	  echo "/etc/hosts.deny permissions are correct"
  else
	    echo "/etc/hosts.deny permissions are incorrect"
fi
