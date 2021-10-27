#specific provider
provider "aws" {
  region  = "us-east-1"
}

#bucket for storing state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "myterraformcode"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "prod/terraform.tf"
    region = "us-east-1"
  }
}