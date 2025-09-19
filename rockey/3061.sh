#!/bin/bash
sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1 > /dev/null

sed -i '/^net.ipv4.icmp_ignore_bogus_error_responses/d' /etc/sysctl.conf
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)

echo "$result"

if [[ "$result" == "net.ipv4.icmp_ignore_bogus_error_responses = 1" ]]; then
	    echo "pass: net.ipv4.icmp_ignore_bogus_error_responses = 1"
    else
	        echo "fail: net.ipv4.icmp_ignore_bogus_error_responses = 0"
fi

