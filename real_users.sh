#!/bin/bash

cat /etc/passwd | grep -e "/bin/bash" -e "/bin/x" -e "/bin/rbash" -e "/bin/sh" -e "/bin/dash" |cut -d ":" -f1 | sort
