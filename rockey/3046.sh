#!/bin/bash
if rpm -q ypserv &> /dev/null; then
	    yum remove -y ypserv
fi

if rpm -q ypserv &> /dev/null; then
	    echo "fail: ypserv được cài đặt"
    else
	        echo "pass: package ypserv is not installed"
fi

