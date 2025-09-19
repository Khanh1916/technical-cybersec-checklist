#!/bin/bash

if rpm -q telnet-server &>/dev/null; then
    echo "telnet-server is installed"
else
    echo "package telnet-server is not installed"
fi
