#!/bin/bash
output=$(systemctl is-enabled ntpd 2>&1)
echo "$output"

if [ "$output" = "enabled" ]; then
	  echo "ntpd service is enabled"
  else
	    echo "ntpd service is not properly configured"
fi
