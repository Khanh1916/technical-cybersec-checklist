#!/bin/bash
if grep -q "pam_tally2" /etc/pam.d/system-auth 2>/dev/null; then
	    echo "pass: pam_tally2 được cấu hình"
    else
	        echo "fail: Không có pam_tally2"
fi
