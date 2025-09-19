#!/bin/bash
perm=$(stat -c "%a" /var/log/messages 2>/dev/null)

if [[ "$perm" == "640" ]]; then
	    echo "pass: Access: (0640/-rw-r-----)"
    else
	        echo "fail: Quyền khác 0640"
fi
