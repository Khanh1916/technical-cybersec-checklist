#!/bin/bash
output=$(systemctl is-enabled nfs-server 2>&1)
echo "$output"

if [[ "$output" == "disabled" || "$output" == *"not found"* ]]; then
	  echo "NFS server is disabled or not found"
  else
	    echo "NFS server is enabled"
fi
