#!/bin/bash
output=$(grep -i "CentOS" /etc/issue)

if [[ -z "$output" ]]; then
	  echo ""
	    echo "CentOS is not present in banner"
    else
	      echo "$output"
	        echo "CentOS is present in banner"
fi
