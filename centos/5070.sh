#!/bin/bash
output=$(firewall-cmd --list-all 2>&1)
echo "$output"

if [[ "$output" == *"ports:"* && "$output" != *"ports: "* ]]; then
	  echo "Firewall rules exist for open ports"
  else
	    echo "Missing rules or open ports are unprotected"
fi
