#!/bin/bash
pass_warn_line=$(grep -E '^PASS_WARN_AGE' /etc/login.defs 2>/dev/null)

if [[ -z "$pass_warn_line" ]]; then
	    echo "fail: PASS_WARN_AGE nhỏ hơn 7 hoặc không có"
    else
	        value=$(echo "$pass_warn_line" | awk '{print $2}' | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -ge 7 ]]; then
			            echo "pass: PASS_WARN_AGE $value"
				        else
						        echo "fail: PASS_WARN_AGE nhỏ hơn 7 hoặc không có"
							    fi
fi
