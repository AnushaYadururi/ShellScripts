#!/bin/bash
echo "please enter the server to check"
read server
mkdir -p /root/output
final_output="/root/output/file.txt"
if ping -c 1 $server &> /dev/null ; then
echo "server is up and running" >> $final_output
else
echo "server is inactive" >> $final_output
fi