#!/bin/bash

source "./common.sh"

# Requirements if using remote state

# require "ENVIRONMENT"
# require "SERVICE_NAME"
# require "DEPLOYMENT_BUCKET"

check_terraform_installation

terraform init
# -backend-config="key=${SERVICE_NAME}/${ENVIRONMENT}-terraform.tfstate" \
# -backend-config="bucket=${DEPLOYMENT_BUCKET}"