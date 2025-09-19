#!/bin/bash
if grep -q '^ALL: ALL' /etc/hosts.deny 2>/dev/null; then
	    echo "pass: ALL: ALL"
    else
	        echo "fail: File rỗng hoặc không chặn tất cả"
fi

