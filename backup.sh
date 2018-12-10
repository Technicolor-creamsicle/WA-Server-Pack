#!/bin/bash
cd "$(dirname "$0")"
mkdir -p backups
DATE=`date +%Y-%m-%d_%H:%M:%S`
zip -r backups/$DATE.zip Universe
