#!/bin/bash
output=$(cat /etc/hosts.deny)
echo "$output"

if grep -q '^ALL: ALL' /etc/hosts.deny; then
	  echo "/etc/hosts.deny is configured to block all"
  else
	    echo "/etc/hosts.deny is empty or does not block all"
fi
