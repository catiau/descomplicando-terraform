terraform {
  backend "s3" {
    bucket = "cauan-studying-terraform"
    key = "aula_backend"
    region = "sa-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
}