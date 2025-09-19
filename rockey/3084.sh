#!/bin/bash
deny_line=$(grep -E '^deny[[:space:]]*=' /etc/security/pam_tally2.conf 2>/dev/null)

if [[ -z "$deny_line" ]]; then
	    echo "fail: deny lớn hơn 3 hoặc không có"
    else
	        value=$(echo "$deny_line" | cut -d= -f2 | tr -d ' ')
		    if [[ "$value" =~ ^[0-9]+$ && "$value" -le 3 ]]; then
			            echo "pass: deny=$value"
				        else
						        echo "fail: deny lớn hơn 3 hoặc không có"
							    fi
fi

