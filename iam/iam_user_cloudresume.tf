resource "aws_iam_user" "cloudresume" {
  name = "cloudresume"
  path = "/cloudresume/"

  tags = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }
}

#groups
resource "aws_iam_user_group_membership" "cloudresume" {
  user = aws_iam_user.cloudresume.name

  groups = [
    "Administrators"
  ]
}

resource "aws_iam_access_key" "cloudresume" {
  user    = aws_iam_user.cloudresume.name
  pgp_key = var.pgp_key

  depends_on = [
    aws_iam_user.cloudresume
  ]
}


