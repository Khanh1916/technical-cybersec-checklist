#!/bin/bash
max_auth_line=$(grep "^MaxAuthTries" /etc/ssh/sshd_config 2>/dev/null)

if [[ -z "$max_auth_line" ]]; then
	    echo "fail: MaxAuthTries lớn hơn 4 hoặc không có"
    else
	        value=$(echo "$max_auth_line" | awk '{print $2}')
		    if [[ "$value" =~ ^[0-9]+$ ]] && [ "$value" -le 4 ]; then
			            echo "pass: MaxAuthTries $value"
				        else
						        echo "fail: MaxAuthTries lớn hơn 4 hoặc không có"
							    fi
fi
