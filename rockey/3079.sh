#!/bin/bash
audit_rules=$(grep -E '^ *[^#]' /etc/audit/audit.rules 2>/dev/null)

if [[ -n "$audit_rules" ]]; then
	    echo "pass: Quy tắc audit tồn tại"
    else
	        echo "fail: File rỗng hoặc chỉ có bình luận"
fi
