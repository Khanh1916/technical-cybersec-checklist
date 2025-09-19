#!/bin/bash
output=$(grep ^remember /etc/security/pwquality.conf)
echo "$output"

if [[ "$output" =~ remember=([0-9]+) ]]; then
	  value="${BASH_REMATCH[1]}"
	    if [ "$value" -ge 5 ]; then
		        echo "remember is 5 or greater"
			  else
				      echo "remember is less than 5"
				        fi
				else
					  echo "remember not configured"
fi
