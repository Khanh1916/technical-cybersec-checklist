#!/bin/bash
output=$(stat /etc/ssh/sshd_config)
echo "$output"

if echo "$output" | grep -q "Access: (0600/-rw-------)"; then
	  echo "Access permissions are set correctly"
  else
	    echo "Incorrect access permissions"
fi
