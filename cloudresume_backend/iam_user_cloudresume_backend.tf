resource "aws_iam_user" "cloudresume_backend" {
  name = "cloudresume-backend"
  path = "/cloudresume/"

  tags = {
    purpose = "cloudresumechallenge"
  }
}

resource "aws_iam_access_key" "cloudresume_backend" {
  user    = aws_iam_user.cloudresume_backend.name
  pgp_key = var.pgp_key

  depends_on = [
    aws_iam_user.cloudresume_backend
  ]
}