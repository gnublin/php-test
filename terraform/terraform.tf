terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "gnublin-terraform-aws"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
}

