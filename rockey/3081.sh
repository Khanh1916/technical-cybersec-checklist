#!/bin/bash
enabled_status=$(systemctl is-enabled auditd 2>/dev/null)
active_status=$(systemctl is-active auditd 2>/dev/null)

if [[ "$enabled_status" == "enabled" && "$active_status" == "active" ]]; then
	    echo "pass: enabled và active"
    else
	        echo "fail: disabled hoặc not found"
fi
