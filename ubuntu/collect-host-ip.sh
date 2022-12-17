#!/bin/bash

declare -a NODES=("kubemaster" "kubenode01" "kubenode02")

for NODE in ${NODES[@]};
do
echo "collecting $NODE ip..."
NODE_IP=$(vagrant ssh $NODE -c "cat /etc/hosts | tail -1 | cut -d' ' -f1")
echo $NODE_IP $NODE | tr -d "\r" >> host-ip
done