#! /bin/bash

# panics!
panic() {
  echo "${1:-'Unexpected Error'}"
  exit "${2:-1}"
}

# checks that the given env variable is set
require() {
  local variable=$1
  [ -z "${!variable+x}" ] && panic "Environment variable $1 is required."
}

# Check if Terraform is installed
check_terraform_installation() {
  if ! command -v terraform &> /dev/null; then
    echo "Terraform is not installed. Please install Terraform and try again."
    exit 1
  fi
}