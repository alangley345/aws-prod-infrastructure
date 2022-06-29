resource "aws_iam_user" "hl7-to-rdb" {
  name = "hl7-to-rdb"
  path = "/hl7-to-rdb/"

  tags = {
    Environment = "production"
    purpose     = "hl7-to-rdb"
  }
}

#groups
resource "aws_iam_user_group_membership" "hl7-to-rdb" {
  user = aws_iam_user.hl7-to-rdb.name

  groups = [
    "Administrators"
  ]
}

resource "aws_iam_access_key" "hl7-to-rdb" {
  user    = aws_iam_user.hl7-to-rdb.name
  pgp_key = var.pgp_key
  
  depends_on = [
    aws_iam_user.hl7-to-rdb
  ]
}


