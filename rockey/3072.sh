#!/bin/bash
protocol_line=$(grep "^Protocol" /etc/ssh/sshd_config 2>/dev/null)

if [[ "$protocol_line" == "Protocol 2" ]]; then
	    echo "pass: Protocol 2"
    else
	        echo "fail: Không có hoặc khác Protocol 2"
fi

