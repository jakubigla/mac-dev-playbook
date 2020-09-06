#!/usr/bin/env bash
set -e

BRANCH=${1:-master}

git clone git@github.com:jakubigla/mac-dev-playbook.git ~/mac-dev-playbook
cd ~/mac-dev-playbook

git checkout $BRANCH

./tools/run.sh
