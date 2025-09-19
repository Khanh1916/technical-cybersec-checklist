#!/bin/bash
output=$(rpm -q ypserv)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "NIS server (ypserv) is not installed"
  else
	    echo "NIS server (ypserv) is installed"
fi
