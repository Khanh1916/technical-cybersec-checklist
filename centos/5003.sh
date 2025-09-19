#!/bin/bash
output=$(modprobe -n -v udf)

echo "$output"

if [[ "$output" == "install /bin/true" ]]; then
	echo "udf is disabled correctly"
	exit 0
else
	echo "udf is not disabled"
	exit 1
fi

