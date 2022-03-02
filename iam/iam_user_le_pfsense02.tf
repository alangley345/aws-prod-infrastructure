#user
resource "aws_iam_user" "le_pfsense02" {
  name = "le-pfsense02"
}

#groups
resource "aws_iam_user_group_membership" "le_pfsense02" {
  user = aws_iam_user.le_pfsense02.name

  groups = [
    "DNS"
  ]
}

#access keys
resource "aws_iam_access_key" "le_pfsense02" {
  user    = aws_iam_user.le_pfsense02.name
}