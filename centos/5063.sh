#!/bin/bash
output=$(sysctl net.ipv4.tcp_syncookies)
echo "$output"

if [[ "$output" == "net.ipv4.tcp_syncookies = 1" ]]; then
	  echo "TCP SYN cookies are enabled"
  else
	    echo "TCP SYN cookies are disabled"
fi
