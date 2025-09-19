#!/bin/bash
output=$(sysctl net.ipv4.ip_forward)
echo "$output"

if [[ "$output" == "net.ipv4.ip_forward = 0" ]]; then
	  echo "IP forwarding is disabled"
  else
	    echo "IP forwarding is enabled"
fi
