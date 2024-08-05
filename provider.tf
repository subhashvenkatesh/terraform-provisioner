terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0" #aws provider version
    }
 }
    backend "s3" {
    bucket = "my-aws-create-bucket"
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "aws-locking"
 
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}

