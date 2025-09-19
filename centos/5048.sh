#!/bin/bash
output=$(postconf -n | grep inet_interfaces)
echo "$output"

if echo "$output" | grep -q "inet_interfaces = localhost"; then
	  echo "MTA is configured for local-only"
  else
	    echo "MTA is not configured for local-only"
fi
