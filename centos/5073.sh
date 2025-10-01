#!/bin/bash
output=$(grep "^LogLevel" /etc/ssh/sshd_config)
echo "$output"

if echo "$output" | grep -qE "^LogLevel (INFO|VERBOSE)$"; then
	  echo "SSH LogLevel is set correctly"
  else
	    echo "SSH LogLevel is not set to INFO or VERBOSE"
fi
