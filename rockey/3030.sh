#!/bin/bash
output=$(grep -i "CentOS" /etc/issue 2>/dev/null)

echo "$output"

if [[ -z "$output" ]]; then
	    echo "PASS: Không có \"CentOS\" trong output"
	        exit 0
	else
		    echo "FAIL: \"CentOS\" có trong output"
		        exit 1
fi
