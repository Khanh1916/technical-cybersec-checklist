#!/bin/bash
output=$(sysctl net.ipv4.conf.all.accept_redirects)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.accept_redirects = 0" ]]; then
	  echo "ICMP redirect acceptance is disabled"
  else
	    echo "ICMP redirect acceptance is enabled"
fi
