#!/bin/bash
enabled_status=$(systemctl is-enabled auditd 2>&1)
active_status=$(systemctl is-active auditd 2>&1)

echo "Enabled: $enabled_status"
echo "Active: $active_status"

if [[ "$enabled_status" == "enabled" && "$active_status" == "active" ]]; then
	  echo "Auditd service is enabled and running"
  else
	    echo "Auditd service is not enabled or not running"
fi
