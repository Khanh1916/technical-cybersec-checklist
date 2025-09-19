#!/bin/bash
x11_line=$(grep "^X11Forwarding" /etc/ssh/sshd_config 2>/dev/null)

if [[ "$x11_line" == "X11Forwarding no" ]]; then
	    echo "pass: X11Forwarding no"
    else
	        echo "fail: X11Forwarding yes hoặc không có"
fi
