terraform {
  required_version = "1.0.8"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.62.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "this"{
    bucket = "my-terraform-s3-bcuket-20211008"
    acl = "private"

    tags = {
        Name = "mybucket"
        Created = "20211008"
        Managedby = "Terraform"
    }
}

resource "aws_s3_object" "this"{
    bucket = aws_s3_bucket.this.bucket
    key = "my-new-object"
    

}