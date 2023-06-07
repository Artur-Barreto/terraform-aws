terraform {
   required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

provider "aws" {
  
}

resource "aws_s3_bucket" "demo-terraform" {
  bucket = "my-tf-aws-s3"
  tags = {
    Name = "My Bucket"
    Environment = "Dev"
  }
}