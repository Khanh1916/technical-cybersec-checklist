#!/bin/bash
if [[ -s /etc/hosts.allow ]]; then
	    echo "pass: Quy tắc cụ thể cho dịch vụ"
    else
	        echo "fail: File rỗng hoặc không có quy tắc"
fi

