#!/bin/bash
if rpm -q ypbind &> /dev/null; then
	    yum remove -y ypbind
fi

if rpm -q ypbind &> /dev/null; then
	    echo "fail: ypbind được cài đặt"
    else
	        echo "pass: package ypbind is not installed"
fi

