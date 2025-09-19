#!/bin/bash
output=$(grep "^PermitRootLogin" /etc/ssh/sshd_config)
echo "$output"

if [[ "$output" == "PermitRootLogin no" ]]; then
	  echo "root login via SSH is disabled"
  else
	    echo "root login via SSH is not properly disabled"
fi
