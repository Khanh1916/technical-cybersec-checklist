#!/bin/bash
output=$(grep pam_tally2 /etc/pam.d/system-auth)
echo "$output"

if [ -n "$output" ]; then
	  echo "pam_tally2 is configured"
  else
	    echo "pam_tally2 is not configured"
fi
