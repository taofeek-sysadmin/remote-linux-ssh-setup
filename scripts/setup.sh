#!/usr/bin/env bash
set -e

echo "Installing Fail2ban..."
dnf install -y epel-release
dnf install -y fail2ban openssh-server

echo "Enabling SSH..."
systemctl enable --now sshd

echo "Configuring Fail2ban for SSH..."
cat <<EOF >/etc/fail2ban/jail.local
[sshd]
enabled = true
port = ssh
maxretry = 5
bantime = 600
findtime = 600
EOF

systemctl enable --now fail2ban

echo "Setup complete."
~
