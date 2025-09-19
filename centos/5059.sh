#!/bin/bash
output=$(sysctl net.ipv4.conf.all.log_martians)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.log_martians = 1" ]]; then
	  echo "Logging of Martian packets is enabled"
  else
	    echo "Logging of Martian packets is disabled"
fi
