#!/bin/bash
sysctl -w net.ipv4.ip_forward=0 > /dev/null

sed -i '/^net.ipv4.ip_forward/d' /etc/sysctl.conf
echo "net.ipv4.ip_forward = 0" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.ip_forward)

echo "$result"

if [[ "$result" == "net.ipv4.ip_forward = 0" ]]; then
	    echo "pass: net.ipv4.ip_forward = 0"
    else
	        echo "fail: net.ipv4.ip_forward = 1"
fi

