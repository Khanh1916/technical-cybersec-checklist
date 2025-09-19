#!/bin/bash
output=$(systemctl is-enabled avahi-daemon 2>&1)
echo "$output"

if [[ "$output" == "disabled" || "$output" == *"not found"* ]]; then
	  echo "avahi-daemon is disabled or not found"
  else
	    echo "avahi-daemon is enabled"
fi
