#!/bin/bash
output=$(sysctl net.ipv4.conf.all.secure_redirects)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.secure_redirects = 0" ]]; then
	  echo "Secure ICMP redirect acceptance is disabled"
  else
	    echo "Secure ICMP redirect acceptance is enabled"
fi
