#!/bin/bash

if ! grep "pam_pwquality.so" /etc/pam.d/common-password &> /dev/null; then
 echo "No configuration of setting password."
 exit 1
fi

echo "PAM: password condition setting is configured."
exit 0
