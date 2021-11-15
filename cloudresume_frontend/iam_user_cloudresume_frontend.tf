resource "aws_iam_user" "cloudresume_frontend" {
  name = "cloudresume-frontend"
  path = "/cloudresume/"

  tags = {
    purpose = "cloudresumechallenge"
  }
}
resource "aws_iam_access_key" "cloudresume_frontend" {
  user    = aws_iam_user.cloudresume_frontend.name
  pgp_key = var.pgp_key
}