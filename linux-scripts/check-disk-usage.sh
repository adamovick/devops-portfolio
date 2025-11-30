#!/usr/bin/env bash

# Simple disk usage report script
# Usage: ./check-disk-usage.sh

echo "Disk usage report for $(hostname) on $(date)"
echo "--------------------------------------------"
df -h | awk 'NR==1 || $5+0 > 70'
