#!/bin/bash
sysctl -w net.ipv4.conf.all.rp_filter=1 > /dev/null

sed -i '/^net.ipv4.conf.all.rp_filter/d' /etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 1" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.conf.all.rp_filter)

echo "$result"

if [[ "$result" == "net.ipv4.conf.all.rp_filter = 1" ]]; then
	    echo "pass: net.ipv4.conf.all.rp_filter = 1"
    else
	        echo "fail: net.ipv4.conf.all.rp_filter = 0"
fi

