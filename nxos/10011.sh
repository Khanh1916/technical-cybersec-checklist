#!/bin/bash

# DESCRIPTION:
# This script validates Cisco NX-OS configuration files to ensure proper
# SSH remote access configuration is enabled.
#
# VALIDATION CRITERIA:
# - SSH feature must be enabled (not disabled with "no feature ssh")
# - Returns PASS if SSH is enabled, FAILED if disabled
#
# USAGE:
# ./10011.sh <config_file>
#
# EXAMPLES:
# ./10011.sh router-config.txt
# ./10011.sh /path/to/cisco-config.cfg
#
# SAMPLE CONFIGURATION:
# ip domain-name your-domain.com
# feature ssh
# ssh key rsa 2048
#
# EXIT CODES:
# 0 - PASS: SSH is properly enabled
# 1 - FAILED: SSH is disabled
# 2 - ERROR: File not found or invalid arguments
#
# REQUIREMENTS:
# - Bash 4.0 or higher
# - Read access to configuration files
# - grep utilities (standard on most Unix/Linux systems)

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

# Function to check SSH feature status
check_ssh_feature() {
    # Check if SSH is explicitly disabled
    if grep -qi "^no[[:space:]]\+feature[[:space:]]\+ssh[[:space:]]*$" "$CONFIG_FILE"; then
        echo "SSH_DISABLED"
    else
        echo "SSH_ENABLED"
    fi
}

# Initialize validation status
failed=false
failure_reasons=()

# Check SSH feature status
ssh_status=$(check_ssh_feature)
if [ "$ssh_status" = "SSH_DISABLED" ]; then
    failed=true
    failure_reasons+=("SSH feature is disabled (found 'no feature ssh')")
fi

# Output results
if [ "$failed" = true ]; then
    echo "FAILED"
    # Optionally output specific failure reasons (uncomment if needed)
    # for reason in "${failure_reasons[@]}"; do
    #     echo "  - $reason" >&2
    # done
    exit 1
else
    echo "PASS"
    exit 0
fi