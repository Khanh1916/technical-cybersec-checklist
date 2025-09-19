#!/bin/bash
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1 > /dev/null

sed -i '/^net.ipv4.icmp_echo_ignore_broadcasts/d' /etc/sysctl.conf
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)

echo "$result"

if [[ "$result" == "net.ipv4.icmp_echo_ignore_broadcasts = 1" ]]; then
	    echo "pass: net.ipv4.icmp_echo_ignore_broadcasts = 1"
    else
	        echo "fail: net.ipv4.icmp_echo_ignore_broadcasts = 0"
fi

