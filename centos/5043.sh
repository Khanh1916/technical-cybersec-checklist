#!/bin/bash
output=$(rpm -q dovecot)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "Dovecot service is not installed"
  else
	    echo "Dovecot service is installed"
fi
