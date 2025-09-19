#!/bin/bash
output=$(systemctl is-enabled rsyslog 2>/dev/null)
echo "$output"

if [[ "$output" == "enabled" ]]; then
	  echo "rsyslog service is enabled"
  else
	    echo "rsyslog service is not enabled"
fi
