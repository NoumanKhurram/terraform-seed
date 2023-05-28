# this can go in main.tf, keeping it in it's own file for clarity
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
  # terraform version
  required_version = ">= 1.4"
}
