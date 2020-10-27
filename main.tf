#specific provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "aws-prod-infrastructure/terraform.tfstate"
    region = "us-east-1"
  }
}