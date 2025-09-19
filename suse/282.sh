#!/bin/bash

if ! grep "^minlen" /etc/security/pwquality.conf &> /dev/null; then
    echo "minlen is not configured."
    exit 1
fi

minlen_value=$(grep "^minlen" /etc/security/pwquality.conf | cut -d= -f2 | tr -d ' ')

if [[ $minlen_value -lt 14 ]]; then
    echo "minlen is less than 14."
    exit 1
fi

echo "minlen=14 or greater is configured."
exit 0
