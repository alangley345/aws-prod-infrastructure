data "local_file" "pgp_key" {
  filename = "Terraform-Access-Secret-Signing.gpg"
}

data "aws_caller_identity" "current" {}