#!/bin/bash
open_ports=$(firewall-cmd --list-ports 2>/dev/null)

all_rules=$(firewall-cmd --list-all 2>/dev/null)

if [[ -z "$open_ports" ]]; then

	    echo "fail: Thiếu quy tắc hoặc cổng mở không được bảo vệ"
	        exit 1
fi

missing_rule=0

for port in $open_ports; do
	    if ! echo "$all_rules" | grep -q "$port"; then
		            missing_rule=1
			            break
				        fi
				done

				if [[ $missing_rule -eq 0 ]]; then
					    echo "pass: Quy tắc khớp với các cổng mở"
				    else
					        echo "fail: Thiếu quy tắc hoặc cổng mở không được bảo vệ"
				fi

