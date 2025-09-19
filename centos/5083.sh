#!/bin/bash
output=$(grep ^minlen /etc/security/pwquality.conf)
echo "$output"

if [[ "$output" =~ minlen=([0-9]+) ]]; then
	  value="${BASH_REMATCH[1]}"
	    if [ "$value" -ge 14 ]; then
		        echo "minlen is 14 or greater"
			  else
				      echo "minlen is less than 14"
				        fi
				else
					  echo "minlen not configured"
fi
