#!/bin/bash

####################

#Author : vara prasad

#Date : 03/08/2026

#version : v1

#This script report the Aws resource usage

####################

#Aws s3
#Aws ec2
#Aws lambda
#Aws IAM users

echo "list s3 buckets"

aws s3 ls

echo "list Ec2 instanaces"

aws ec2 describe_instances | jq '.Reservations[].Instances[].InstanceId'

echo list lambda

aws lambda list_functions

echo list IAM users

aws iam list_users



