#!/bin/bash

source "./common.sh"

require "ENVIRONMENT"
require "SERVICE_NAME"
require "VERSION"

check_terraform_installation

terraform plan \
  -out="/tmp/${ENVIRONMENT}-${SERVICE_NAME}-terraform.tfstate" \
  -var "environment=${ENVIRONMENT}" \
  -var "service_name=${SERVICE_NAME}" \
  -var "version=${VERSION}"
