#!/bin/bash
status=$(systemctl is-enabled rsyslog 2>&1)

if [[ "$status" == "enabled" ]]; then
	    echo "pass: enabled"
    else
	        echo "fail: disabled hoặc not found"
fi
