#!/bin/bash
output=$(sysctl net.ipv4.conf.all.send_redirects)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.send_redirects = 0" ]]; then
	  echo "Send redirects is disabled"
  else
	    echo "Send redirects is enabled"
fi
