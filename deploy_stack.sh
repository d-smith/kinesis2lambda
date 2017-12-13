#!/bin/bash

aws cloudformation create-stack --stack-name k2l \
--template-body file://k2l.yml \
--capabilities CAPABILITY_IAM