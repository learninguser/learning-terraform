terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "learninguser"
    # key: name of the statefile in S3
    key            = "tfstate_lock"
    region         = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
