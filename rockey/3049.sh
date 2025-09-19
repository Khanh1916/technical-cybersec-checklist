#!/bin/bash
systemctl disable nfs-server 2>/dev/null
systemctl disable rpcbind 2>/dev/null

status=$(systemctl is-enabled nfs-server 2>&1)

if [[ "$status" == "disabled" || "$status" == "not-found" ]]; then
	    echo "pass: $status"
    else
	        echo "fail: enabled"
fi

