#!/bin/bash
output=$(sysctl net.ipv4.conf.all.rp_filter)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.rp_filter = 1" ]]; then
	  echo "RP-Filter is enabled"
  else
	    echo "RP-Filter is disabled"
fi
