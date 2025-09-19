#!/bin/bash
output=$(rpm -q vsftpd proftpd pure-ftpd)
echo "$output"

if [[ "$output" == *"vsftpd is not installed"* && "$output" == *"proftpd is not installed"* && "$output" == *"pure-ftpd is not installed"* ]]; then
	  echo "FTP servers (vsftpd, proftpd, pure-ftpd) are not installed"
  else
	    echo "One or more FTP servers (vsftpd, proftpd, pure-ftpd) are installed"
fi
