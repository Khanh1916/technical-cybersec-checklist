#!/bin/bash
inactive_line=$(useradd -D | grep INACTIVE)

if [[ -z "$inactive_line" ]]; then
	    echo "fail: INACTIVE=-1 hoặc lớn hơn 30"
    else
	        value=$(echo "$inactive_line" | awk -F= '{print $2}' | tr -d ' ')
		    if [[ "$value" =~ ^-?[0-9]+$ ]] && [ "$value" -ge 0 ] && [ "$value" -le 30 ]; then
			            echo "pass: INACTIVE=$value"
				        else
						        echo "fail: INACTIVE=-1 hoặc lớn hơn 30"
							    fi
fi

