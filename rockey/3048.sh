#!/bin/bash
postconf -e "inet_interfaces = localhost"

current_value=$(postconf -n | grep '^inet_interfaces' | awk '{print $3}')

if [[ "$current_value" == "localhost" ]]; then
	    echo "pass: inet_interfaces = localhost"
    else
	        echo "fail: inet_interfaces không phải localhost"
fi

