#!/bin/bash
output=$(sysctl net.ipv4.conf.all.accept_source_route)
echo "$output"

if [[ "$output" == "net.ipv4.conf.all.accept_source_route = 0" ]]; then
	  echo "Source route packet acceptance is disabled"
  else
	    echo "Source route packet acceptance is enabled"
fi
