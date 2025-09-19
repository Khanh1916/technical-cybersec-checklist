#!/bin/bash
output=$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)
echo "$output"

if [[ "$output" == "net.ipv4.icmp_echo_ignore_broadcasts = 1" ]]; then
	  echo "Ignore broadcast requests is enabled"
  else
	    echo "Ignore broadcast requests is disabled"
fi
