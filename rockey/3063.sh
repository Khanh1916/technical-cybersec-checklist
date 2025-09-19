#!/bin/bash
sysctl -w net.ipv4.tcp_syncookies=1 > /dev/null

sed -i '/^net.ipv4.tcp_syncookies/d' /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.tcp_syncookies)

echo "$result"

if [[ "$result" == "net.ipv4.tcp_syncookies = 1" ]]; then
	    echo "pass: net.ipv4.tcp_syncookies = 1"
    else
	        echo "fail: net.ipv4.tcp_syncookies = 0"
fi

