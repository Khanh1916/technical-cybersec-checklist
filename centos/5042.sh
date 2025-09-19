#!/bin/bash
output=$(rpm -q httpd nginx)
echo "$output"

if [[ "$output" == *"httpd is not installed"* && "$output" == *"nginx is not installed"* ]]; then
	  echo "HTTP servers (httpd, nginx) are not installed"
  else
	    echo "One or more HTTP servers (httpd, nginx) are installed"
fi
