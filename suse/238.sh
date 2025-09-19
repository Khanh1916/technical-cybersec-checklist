#!/bin/bash

if ! rpm -q openldap2 &>/dev/null; then
  echo "package slapd is not installed"
else
  echo "slapd is installed"
fi