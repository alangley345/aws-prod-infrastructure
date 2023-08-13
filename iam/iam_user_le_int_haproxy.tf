#user
resource "aws_iam_user" "le_int_haproxy" {
  name = "le-int_haproxy"
}

#groups
resource "aws_iam_user_group_membership" "le_int_haproxy" {
  user = aws_iam_user.le_int_haproxy.name

  groups = [
    "DNS"
  ]
}

#access keys
resource "aws_iam_access_key" "le_int_haproxy" {
  user = aws_iam_user.le_int_haproxy.name
}