#bucket for storing state
resource "aws_s3_bucket" "lamdba_zips" {
  bucket = "mylambdafunctions"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}