#!bin/bash
sysctl -w net.ipv4.conf.all.send_redirects=0 > /dev/null

sed -i '/^net.ipv4.conf.all.send_redirects/d' /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf

result=$(sysctl net.ipv4.conf.all.send_redirects)

echo "$result"

if [[ "$result" == "net.ipv4.conf.all.send_redirects = 0" ]]; then
	    echo "pass: net.ipv4.conf.all.send_redirects = 0"
    else
	        echo "fail: net.ipv4.conf.all.send_redirects = 1"
fi

