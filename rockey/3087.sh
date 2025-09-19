#!/bin/bash
pass_max_line=$(grep -E '^PASS_MAX_DAYS' /etc/login.defs 2>/dev/null)

if [[ -z "$pass_max_line" ]]; then
	    echo "fail: PASS_MAX_DAYS lớn hơn 90 hoặc không có"
    else
	        value=$(echo "$pass_max_line" | awk '{print $2}' | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -le 90 ]]; then
			            echo "pass: PASS_MAX_DAYS $value"
				        else
						        echo "fail: PASS_MAX_DAYS lớn hơn 90 hoặc không có"
							    fi
fi
