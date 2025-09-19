#!/bin/bash
expire_line=$(chage -l root | grep "Password expires")

if [[ "$expire_line" == *"Never"* || -z "$expire_line" ]]; then
	    echo "fail: Never hoặc không có ngày hết hạn"
    else
	        echo "pass: Ngày hết hạn được thiết lập"
fi
