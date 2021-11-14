resource "aws_iam_user" "test" {
  name = "test"
  path = "/test/"

  tags = {
    purpose = "test"
  }
}

resource "aws_iam_access_key" "test" {
  user    = aws_iam_user.test.name
  pgp_key = var.pgp_key
}

output "secret" {
    value = aws_iam_access_key.test.secret
}