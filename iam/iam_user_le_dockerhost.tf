#user
resource "aws_iam_user" "le_dockerhost" {
  name = "le-dockerhost"
}

#groups
resource "aws_iam_user_group_membership" "le_dockerhost" {
  user = aws_iam_user.le_dockerhost.name

  groups = [
    "DNS"
  ]
}

#access keys
resource "aws_iam_access_key" "le_dockerhost" {
  user    = aws_iam_user.le_dockerhost.name
  #pgp_key = var.pgp_key
}