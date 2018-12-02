#!/bin/bash
cd "$(dirname "$0")"
git stash
git pull
chmod +x *.sh