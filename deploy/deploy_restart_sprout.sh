#!/bin/bash
source hosts.env

echo -e "\n** pushing assets"

deploy/scp_server_assets.sh

echo -e "\n** restarting sprout"

ssh ec2-user@$KFFPPROD \
  './bin/prod_restart_sprout.sh'
