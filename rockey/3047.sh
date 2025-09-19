#!/bin/bash
if rpm -q telnet-server &> /dev/null; then
	    yum remove -y telnet-server
fi

if rpm -q telnet-server &> /dev/null; then
	    echo "fail: telnet-server được cài đặt"
    else
	        echo "pass: package telnet-server is not installed"
fi

