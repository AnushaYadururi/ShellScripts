#!/bin/bash
threshold=10
df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " "  $1 }'|
while read result;
do
usage=$(echo $result | awk '{ print $1}' | cut -d'%' -f1)
partition=$(echo $result | awk '{ print $2 }')
if [ $usage -ge $threshold ]; then
echo "Warning: Disk usage on $partition is at ${usage}%"
fi
done