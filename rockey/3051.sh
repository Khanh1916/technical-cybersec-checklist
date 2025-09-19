#!/bin/bash
if rpm -q rsh &> /dev/null; then
	    yum remove -y rsh
fi

if rpm -q rsh &> /dev/null; then
	    echo "fail: rsh được cài đặt"
    else
	        echo "pass: package rsh is not installed"
fi

