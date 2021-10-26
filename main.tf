#specific provider
provider "aws" {
  region  = "us-east-2"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "production/terraform.tfstate"
    region = "us-east-1"
  }
}