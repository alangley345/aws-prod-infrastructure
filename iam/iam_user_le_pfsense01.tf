#user
resource "aws_iam_user" "le_pfsense01" {
  name = "le-pfsense01"
}

#groups
resource "aws_iam_user_group_membership" "le_pfsense01" {
  user = aws_iam_user.le_pfsense01.name

  groups = [
    "DNS"
  ]
}

#access keys
resource "aws_iam_access_key" "le_pfsense01" {
  user = aws_iam_user.le_pfsense01.name
}