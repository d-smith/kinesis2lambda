#!/bin/bash

aws cloudformation create-stack --stack-name k2l \
--parameters ParameterKey=CodeBucketName,ParameterValue=84101-demo-bucket \
--template-body file://k2l.yml \
--capabilities CAPABILITY_IAM