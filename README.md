# Remote Linux Server SSH Setup

This project demonstrates secure SSH setup and basic server hardening
using Fail2ban on a Linux system.

## Features
- SSH key-based authentication
- SSH client configuration
- Fail2ban intrusion prevention
- Automated setup scripts
- CI validation with GitHub Actions

## Usage

    bash
sudo ./scripts/setup.sh
sudo ./scripts/verify.sh

# Architecture
GitHub Repo
   ↓ (clone)
Linux VM (CentOS Stream 10)
   ├── SSH hardening
   ├── Fail2ban
   ├── setup.sh
   ├── verify.sh
   └── GitHub Actions (lint + validation)

Author
Taofeek Komolafe
DevOps | Sys Admin

