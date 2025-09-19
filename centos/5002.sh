#!/bin/bash
output=$(modprobe -n -v squashfs)

echo "$output"

if [[ "$output" == "install /bin/true" ]]; then
	echo "squashfs is disabled correctly"
	exit 0
else
	echo "squashfs is not disabled"
	exit 1
fi

