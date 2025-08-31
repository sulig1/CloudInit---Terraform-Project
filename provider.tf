terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}


provider "aws" {
region = var.aws_region # Specifies the AWS region
access_key = var.access_key # AWS access key for authentication
secret_key = var.secret_key # AWS secret key for authentication
}