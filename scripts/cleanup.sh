#!/usr/bin/env bash

systemctl stop fail2ban
dnf remove -y fail2ban
rm -f /etc/fail2ban/jail.local
