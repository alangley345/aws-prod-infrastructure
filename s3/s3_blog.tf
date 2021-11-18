resource "aws_s3_bucket" "aaronlangley" {
  bucket = "aaronlangley.net"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }

}