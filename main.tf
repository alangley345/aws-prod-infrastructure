#specific provider
provider "aws" {
  region  = "us-east-1"
}

#define location of state file
terraform {
  backend "s3" {
    bucket   = "myterraformcode"
    key      = "prod/base_state.tf"
    region   = "us-east-1"
  }
}