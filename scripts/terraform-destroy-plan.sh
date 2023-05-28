#!/bin/bash

source "./common.sh"

require "ENVIRONMENT"
require "SERVICE_NAME"
require "VERSION"

check_terraform_installation

terraform plan -destroy \
  -out="/tmp/${ENVIRONMENT}-${APP_NAME}-terraform.tfstate" \
  -var "environment=${ENVIRONMENT}" \
  -var "service_name=${SERVICE_NAME}" \
  -var "version=${VERSION}"