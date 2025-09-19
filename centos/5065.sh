#!/bin/bash
output=$(cat /etc/hosts.allow)
echo "$output"

if [[ -s /etc/hosts.allow ]]; then
	  echo "hosts.allow has specific rules"
  else
	    echo "hosts.allow is empty or has no rules"
fi
