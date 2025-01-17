	#!/bin/bash

# AWS CLI command to create a CloudWatch alarm
aws cloudwatch put-metric-alarm \
    --alarm-name "Alarm-1" \
    --alarm-description "triggers an alert when the CPU usage of the EC2 instance exceeds 80%" \
    --namespace "EC2" \
    --metric-name "CPUUtilization" \
    --statistic "Average" \
    --period 300 \
    --threshold 80 \
    --comparison-operator "GreaterThanOrEqualToThreshold" \
    --evaluation-periods 2 \
    --alarm-actions "arn:aws:sns:ap-south-1:AWS_ID:ExampleTopic" \
    --ok-actions "arn:aws:sns:ap-south-1:AWS_ID:ExampleTopic" \
    --insufficient-data-actions "arn:aws:sns:ap-south-1:AWS_ID:MyTopic"
