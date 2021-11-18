#bucket for storing lambda functions from Github
resource "aws_s3_bucket" "lamdba_functions" {
  bucket = "lambdafunctionstaging"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}