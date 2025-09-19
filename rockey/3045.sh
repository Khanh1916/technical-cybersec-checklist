#!/bin/bash
if rpm -q squid &> /dev/null; then
	    yum remove -y squid
fi

if rpm -q squid &> /dev/null; then
	    echo "fail: squid được cài đặt"
    else
	        echo "pass: package squid is not installed"
fi

