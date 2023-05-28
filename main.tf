/*
terraform {
  # remote state file
   backend "s3" {
    # bucket and region of remote state file
    bucket = "terraform-states"
    region = "eu-west-1"
  }
}
*/

provider "aws" {
  region = var.aws_region
  default_tags = local.common_tags
}