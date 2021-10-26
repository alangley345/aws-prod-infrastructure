provider "aws" {
  region  = "us-east-2"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraform-us-east-2"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}