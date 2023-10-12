#!/bin/bash

instance_id=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
aws ssm create-association --name "simple-app" --targets "Key=InstanceIds,Values=$instance_id" --region us-east-1
