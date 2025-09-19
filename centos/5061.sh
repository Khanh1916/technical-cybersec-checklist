#!/bin/bash
output=$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)
echo "$output"

if [[ "$output" == "net.ipv4.icmp_ignore_bogus_error_responses = 1" ]]; then
	  echo "Bad error message protection is enabled"
  else
	    echo "Bad error message protection is disabled"
fi
