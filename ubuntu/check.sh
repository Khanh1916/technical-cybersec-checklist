#!/bin/bash

if dpkg -s nis &> /dev/null; then
  echo "NIS package is installed."
  exit 1
fi

if systemctl is-active --quiet ypbind 2>/dev/null; then
  echo "ypbind service is running."
  exit 1
fi

if systemctl is-active --quiet ypserv 2>/dev/null; then
  echo "ypserv service is running."
  exit 1
fi

if grep -q "nis" /etc/nsswitch.conf 2>/dev/null; then
  echo "NIS is referenced in /etc/nsswitch.conf."
  exit 1
fi

echo "NIS is not present."
exit 0
