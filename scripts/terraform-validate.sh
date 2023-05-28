#! /bin/bash

source "./common.sh"

check_terraform_installation

terraform validate -json