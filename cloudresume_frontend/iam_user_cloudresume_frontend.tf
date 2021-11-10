resource "aws_iam_user" "cloudresume-frontend" {
  name = "cloudresume-frontend"
  path = "/cloudresume/"

  tags = {
    purpose = "cloudresumechallenge"
  }
}
