
#!/bin/bash

if grep -i "Red Hat" /etc/issue &> /dev/null; then
  echo "OS information found in banner."
  exit 1
fi

echo "OS information removed from banner."
exit 0
