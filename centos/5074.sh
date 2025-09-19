#!/bin/bash
output=$(grep "^X11Forwarding" /etc/ssh/sshd_config)
echo "$output"

if [[ "$output" == "X11Forwarding no" ]]; then
	  echo "X11Forwarding is disabled"
  else
	    echo "X11Forwarding is not properly disabled"
fi
