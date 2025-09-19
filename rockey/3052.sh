#!/bin/bash
if rpm -q talk-server &> /dev/null; then
	    yum remove -y talk-server
fi

if rpm -q talk-server &> /dev/null; then
	    echo "fail: talk-server được cài đặt"
    else
	        echo "pass: package talk-server is not installed"
fi

