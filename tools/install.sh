#!/usr/bin/env bash
set -e

LAPTOP_PROFILE=${1:-master}

git clone --single-branch --branch "$LAPTOP_PROFILE" git@github.com:jakubigla/mac-dev-playbook.git ~/mac-dev-playbook
cd ~/mac-dev-playbook
./tools/run.sh
