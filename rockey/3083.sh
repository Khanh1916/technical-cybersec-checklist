#!/bin/bash
minlen_line=$(grep -E '^minlen[[:space:]]*=' /etc/security/pwquality.conf 2>/dev/null)

if [[ -z "$minlen_line" ]]; then
	    echo "fail: minlen nhỏ hơn 14 hoặc không có"
    else
	        value=$(echo "$minlen_line" | cut -d= -f2 | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -ge 14 ]]; then
			            echo "pass: minlen=$value"
				        else
						        echo "fail: minlen nhỏ hơn 14 hoặc không có"
							    fi
fi
