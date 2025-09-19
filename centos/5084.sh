#!/bin/bash
output=$(grep ^deny /etc/security/pam_tally2.conf)
echo "$output"

if [[ "$output" =~ deny=([0-9]+) ]]; then
	  value="${BASH_REMATCH[1]}"
	    if [ "$value" -le 3 ]; then
		        echo "deny is 3 or less"
			  else
				      echo "deny is greater than 3"
				        fi
				else
					  echo "deny not configured"
fi
