#/bin/bash
output=$(rpm -q talk-server)
echo "$output"

if [[ "$output" == *"is not installed" ]]; then
	  echo "talk server is not installed"
  else
	    echo "talk server is installed"
fi
