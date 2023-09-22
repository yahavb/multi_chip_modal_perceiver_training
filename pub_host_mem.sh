#!/bin/bash

while true
do
memfree=$(cat /proc/meminfo | grep MemFree| awk '{print $2}')
aws cloudwatch put-metric-data --metric-name host_free_mem --namespace perciver --value $memfree
echo $(date) $memfree
sleep 10
done
