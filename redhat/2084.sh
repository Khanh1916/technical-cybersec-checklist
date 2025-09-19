#!/bin/bash

if ! grep "^deny" /etc/security/pam_tally2.conf &> /dev/null; then
    echo "deny is not configured or greater than 3."
    exit 1
fi

deny_value=$(grep "^deny" /etc/security/pam_tally2.conf | cut -d= -f2 | tr -d ' ')

if [[ $deny_value -gt 3 ]]; then
    echo "deny is not configured or greater than 3."
    exit 1
fi

echo "deny=3 or less is configured."
exit 0
