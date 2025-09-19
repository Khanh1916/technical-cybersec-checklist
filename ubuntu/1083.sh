#!/bin/bash

if ! grep "pam_faillock.so" /etc/pam.d/common-auth /etc/pam.d/login /etc/pam.d/sshd &> /dev/null; then
  echo "no pam_faillock.so in common-auth or login or sshd."
  exit 1
fi

echo "PAM: all files of (common-auth, login, sshd) include pam_faillock.so."
exit 0
