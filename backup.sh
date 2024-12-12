#!/bin/bash
source="/root/source"
destination="/root/destination"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
#create backyp directory and copy files
mkdir -p $destination/$DATE
cp -r $source $destination/$DATE
echo "Backup completed on $DATE"