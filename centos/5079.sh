#!/bin/bash
output=$(grep -E '^ *[^#]' /etc/audit/audit.rules)
echo "$output"

if [ -n "$output" ]; then
	  echo "Audit rules exist"
  else
	    echo "Audit rules file is empty or only contains comments"
fi
