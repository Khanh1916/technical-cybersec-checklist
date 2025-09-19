#!/bin/bash
encrypt_line=$(grep -E '^ENCRYPT_METHOD[[:space:]]+SHA512' /etc/login.defs 2>/dev/null)

if [[ "$encrypt_line" == *"SHA512" ]]; then
	    echo "pass: ENCRYPT_METHOD SHA512"
    else
	        echo "fail: Không có hoặc khác SHA512"
fi
