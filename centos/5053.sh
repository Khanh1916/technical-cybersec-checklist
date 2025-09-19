#!/bin/bash
output=$(rpm -q openldap-clients)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "LDAP client (openldap-clients) is not installed"
  else
	    echo "LDAP client (openldap-clients) is installed"
fi
