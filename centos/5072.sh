#!/bin/bash
output=$(grep "^Protocol" /etc/ssh/sshd_config)
echo "$output"

if [[ "$output" == "Protocol 2" ]]; then
	  echo "SSH is configured to use Protocol 2"
  else
	    echo "SSH is not properly configured for Protocol 2"
fi
