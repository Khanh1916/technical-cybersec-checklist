#!/bin/bash

if ! rpm -q apache2 &>/dev/null && ! rpm -q nginx &>/dev/null; then
  echo "package httpd is not installed and package nginx is not installed"
else
  echo "httpd or nginx is installed"
fi
