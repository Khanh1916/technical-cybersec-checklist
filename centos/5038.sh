#!/bin/bash
output=$(rpm -q dhcp-server)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "DHCP server is not installed"
  else
	    echo "DHCP server is installed"
fi
