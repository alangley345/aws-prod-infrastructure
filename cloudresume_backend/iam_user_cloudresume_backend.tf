resource "aws_iam_user" "cloudresume-backend" {
  name = "cloudresume-backend"
  path = "/cloudresume/"

  tags = {
    purpose = "cloudresumechallenge"
  }
}