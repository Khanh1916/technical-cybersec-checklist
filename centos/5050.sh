#!/bin/bash
output=$(rpm -q ypbind)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "NIS client (ypbind) is not installed"
  else
	    echo "NIS client (ypbind) is installed"
fi
