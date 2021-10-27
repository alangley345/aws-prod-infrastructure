#Public DNS Zones

provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "production/terraform.tfstate"
    region = "us-east-1"
  }
}