#!/bin/bash
service="nginx"
if systemctl is-active --quiet $service; then
echo "$service is running"
else
echo "$service is not running"
systemctl start $service
fi