#!/bin/bash
perm=$(stat -c "%a" /etc/ssh/sshd_config 2>/dev/null)

if [[ "$perm" == "600" ]]; then
	    echo "pass: Access: (0600/-rw-------)"
    else
	        echo "fail: Quyền khác 0600"
fi

