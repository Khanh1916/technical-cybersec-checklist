#!/bin/bash
output=$(rpm -q slapd)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "LDAP server (slapd) is not installed"
  else
	    echo "LDAP server (slapd) is installed"
fi
