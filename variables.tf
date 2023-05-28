variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "service_name" {
  type        = string
  description = "Service name"
}

variable "version" {
  type        = string
  description = "Version"
}
