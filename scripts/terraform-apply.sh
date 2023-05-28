#! /bin/bash

source "./common.sh"

require "ENVIRONMENT"
require "SERVICE_NAME"

check_terraform_installation

terraform apply "/tmp/${ENVIRONMENT}-${SERVICE_NAME}-terraform.tfstate"
