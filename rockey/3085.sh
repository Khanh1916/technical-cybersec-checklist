#!/bin/bash
remember_line=$(grep -E '^remember[[:space:]]*=' /etc/security/pwquality.conf 2>/dev/null)

if [[ -z "$remember_line" ]]; then
	    echo "fail: remember nhỏ hơn 5 hoặc không có"
    else
	        value=$(echo "$remember_line" | cut -d= -f2 | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -ge 5 ]]; then
			            echo "pass: remember=$value"
				        else
						        echo "fail: remember nhỏ hơn 5 hoặc không có"
							    fi
fi
