#!/bin/bash
output=$(systemctl is-enabled firewalld 2>&1)
echo "$output"

if [[ "$output" == "enabled" ]]; then
	  echo "Firewall (firewalld) is enabled"
  else
	    echo "Firewall (firewalld) is disabled or not found"
fi
