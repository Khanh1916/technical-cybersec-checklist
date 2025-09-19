#!/bin/bash

# Check shadow password parameters configuration
if grep "^PASS_MAX_DAYS\|^PASS_MIN_DAYS\|^PASS_WARN_AGE" /etc/login.defs 2>/dev/null | wc -l | grep -q "^3$"; then
  echo "PASS."
  exit 0
fi

echo "FAIL."
exit 1
