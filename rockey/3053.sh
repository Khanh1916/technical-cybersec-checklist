#!/bin/bash
if rpm -q openldap-clients &> /dev/null; then
	    yum remove -y openldap-clients
fi

if rpm -q openldap-clients &> /dev/null; then
	    echo "fail: openldap-clients được cài đặt"
    else
	        echo "pass: package openldap-clients is not installed"
fi

