#!/bin/bash
output=$(rpm -q squid)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "HTTP Proxy server (squid) is not installed"
  else
	    echo "HTTP Proxy server (squid) is installed"
fi
