#!/bin/bash
if rpm -q audit &> /dev/null; then
	    echo "pass: audit được cài đặt"
    else
	        echo "fail: package audit is not installed"
fi
