#!/usr/bin/env bash

echo "SSH status:"
systemctl status sshd --no-pager

echo
echo "Fail2ban status:"
fail2ban-client status sshd
