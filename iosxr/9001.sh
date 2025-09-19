#!/bin/bash

# DESCRIPTION:
# This script validates Cisco IOS XR configuration files to ensure proper
# hostname configuration is present and meets security standards.
#
# VALIDATION CRITERIA:
# - Configuration must contain a "hostname" statement
# - Hostname must not be a default value (Router/Switch/router/switch/ios/iosxr)
# - Returns PASS for compliant configurations, FAILED otherwise
#
# USAGE:
# ./9001.sh <config_file>
#
# EXAMPLES:
# ./9001.sh router-config.txt
# ./9001.sh /path/to/cisco-config.cfg
#
# EXIT CODES:
# 0 - PASS: Configuration meets hostname requirements
# 1 - FAILED: Configuration does not meet requirements
# 2 - ERROR: File not found or invalid arguments
#
# REQUIREMENTS:
# - Bash 4.0 or higher
# - Read access to configuration files
# - grep, awk utilities (standard on most Unix/Linux systems)

# Check arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <config_file>"
    exit 2
fi

CONFIG_FILE="$1"

# Check file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "File not found: $CONFIG_FILE"
    exit 2
fi

# Extract hostname from config
HOSTNAME=$(grep -i "^[[:space:]]*hostname[[:space:]]" "$CONFIG_FILE" | awk '{print $2}' | head -1)

# Check if hostname exists
if [ -z "$HOSTNAME" ]; then
    echo "FAILED"
    exit 1
fi

# Check against forbidden values (case-insensitive)
if grep -qi "^[[:space:]]*hostname[[:space:]]\+\(router\|switch\|ios\|iosxr\)[[:space:]]*$" "$CONFIG_FILE"; then
    echo "FAILED"
    exit 1
fi

echo "PASS"
exit 0