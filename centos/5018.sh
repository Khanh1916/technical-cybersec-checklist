#!/bin/bash
output=$(find / -type d -perm -0002 ! -perm -1000 2>/dev/null)

if [[ -z "$output" ]]; then
	  echo ""
	    echo "All world-writable directories have the sticky bit set"
    else
	      echo "$output"
	        echo "Some world-writable directories are missing the sticky bit"
fi
