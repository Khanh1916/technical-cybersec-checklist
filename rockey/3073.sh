#!/bin/bash
loglevel_line=$(grep "^LogLevel" /etc/ssh/sshd_config 2>/dev/null)

if [[ "$loglevel_line" == "LogLevel INFO" || "$loglevel_line" == "LogLevel VERBOSE" ]]; then
	    echo "pass: $loglevel_line"
    else
	        echo "fail: Không có hoặc khác INFO/VERBOSE"
fi
