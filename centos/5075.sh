#!/bin/bash
output=$(grep "^MaxAuthTries" /etc/ssh/sshd_config)
echo "$output"

if [[ -n "$output" ]]; then
	  value=$(echo "$output" | awk '{print $2}')
	    if [[ "$value" -le 4 ]]; then
		        echo "MaxAuthTries is properly set to 4 or less"
			  else
				      echo "MaxAuthTries is set too high"
				        fi
				else
					  echo "MaxAuthTries is not configured"
fi
