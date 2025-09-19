#!/bin/bash
sysctl -w net.ipv4.conf.all.accept_source_route=0 > /dev/null

sed -i '/^net.ipv4.conf.all.accept_source_route/d' /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.conf.all.accept_source_route)

echo "$result"

if [[ "$result" == "net.ipv4.conf.all.accept_source_route = 0" ]]; then
	    echo "pass: net.ipv4.conf.all.accept_source_route = 0"
    else
	        echo "fail: net.ipv4.conf.all.accept_source_route = 1"
fi

