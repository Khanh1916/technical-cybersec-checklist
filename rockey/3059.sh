#!/bin/bash
sysctl -w net.ipv4.conf.all.log_martians=1 > /dev/null

sed -i '/^net.ipv4.conf.all.log_martians/d' /etc/sysctl.conf
echo "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.conf.all.log_martians)

echo "$result"

if [[ "$result" == "net.ipv4.conf.all.log_martians = 1" ]]; then
	    echo "pass: net.ipv4.conf.all.log_martians = 1"
    else
	        echo "fail: net.ipv4.conf.all.log_martians = 0"
fi

