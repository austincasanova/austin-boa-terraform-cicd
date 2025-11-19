terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }
  backend "s3" {
    bucket         = "austin-boa-terraform-state"
    key            = "dev/austin/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "austin-lock-table"
  }
}

provider "aws" {
  # Configuration options
  region = var.my_aws_region
}