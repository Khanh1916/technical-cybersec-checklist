#!/bin/bash
output=$(rpm -q telnet-server)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "Telnet server is not installed"
  else
	    echo "Telnet server is installed"
fi
