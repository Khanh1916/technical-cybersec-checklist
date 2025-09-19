#!/bin/bash
if ! rpm -q tcp_wrappers &> /dev/null; then
	    yum install -y tcp_wrappers
fi

if rpm -q tcp_wrappers &> /dev/null; then
	    echo "pass: tcp_wrappers được cài đặt"
    else
	        echo "fail: package tcp_wrappers is not installed"
fi

