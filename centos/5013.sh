#!/bin/bash
output=$(findmnt /var/tmp)

if [[ -n "$output" && "$output" == *"bind"* ]]; then
	  echo "$output"
	    echo "/var/tmp is a bind mount of /tmp"
    else
	      echo "/var/tmp is not a bind mount of /tmp"
fi
