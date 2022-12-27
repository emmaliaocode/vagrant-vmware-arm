#!/bin/bash

for NODE in $(ls -l ./.vagrant/machines | awk '{print $9}');
do
echo "collecting $NODE ip address..."
NODE_IP=$(vagrant ssh $NODE -c "cat /etc/hosts | tail -1 | cut -d' ' -f1")
echo $NODE_IP $NODE | tr -d "\r" >> ./host-ip
done

echo ""
echo "ip addresses:"
cat ./host-ip
rm ./host-ip