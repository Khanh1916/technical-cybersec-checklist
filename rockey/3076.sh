#!/bin/bash
permit_root_line=$(grep "^PermitRootLogin" /etc/ssh/sshd_config 2>/dev/null)

if [[ "$permit_root_line" == "PermitRootLogin no" ]]; then
	    echo "pass: PermitRootLogin no"
    else
	        echo "fail: PermitRootLogin yes hoặc không có"
fi
