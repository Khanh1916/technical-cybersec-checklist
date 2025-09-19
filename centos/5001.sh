#!/bin/bash
output=$(modprobe -n -v cramfs)

echo "$output"

if [[ "$output" == "install /bin/true" ]]; then
	echo "cramfs is disabled correctly"
	exit 0
else
	echo "cramfs is not disabled"
	exit 1
fi
