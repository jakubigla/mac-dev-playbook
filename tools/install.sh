#!/usr/bin/env bash
set -e

LAPTOP_PROFILE=${LAPTOP_PROFILE:-master}

git clone git@github.com:jakubigla/mac-dev-playbook.git ~/mac-dev-playbook
cd ~/mac-dev-playbook

git checkout "$LAPTOP_PROFILE"

./tools/run.sh
