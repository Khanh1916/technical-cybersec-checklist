#!/bin/bash
pass_min_line=$(grep -E '^PASS_MIN_DAYS' /etc/login.defs 2>/dev/null)

if [[ -z "$pass_min_line" ]]; then
	    echo "fail: PASS_MIN_DAYS 0 hoặc không có"
    else
	        value=$(echo "$pass_min_line" | awk '{print $2}' | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -ge 1 ]]; then
			            echo "pass: PASS_MIN_DAYS $value"
				        else
						        echo "fail: PASS_MIN_DAYS 0 hoặc không có"
							    fi
fi
