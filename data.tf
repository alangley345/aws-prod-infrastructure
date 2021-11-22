data "local_file" "pgp_key" {
  filename = "access-key-signing-base64.gpg"
}

data "aws_caller_identity" "current" {}