#!/bin/bash


############################
#
# Author: MAtthew Tarfa
# Date: 15th-April-2023
#
# Version: V1
#
# This script will report the Aws resource usage
############################

set -x

# This script will report the below service usage
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTreacker

# List EC2 Instances
echo "print list of EC2 Servers"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# List Lambda
echo "print list of lambda functions"
aws lambda list-functions

# List IAM users
echo "print list of IAM users"
aws iam list-users >> resourceTracker
