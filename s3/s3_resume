resource "aws_s3_bucket" "site-bucket" {
  bucket = "resume.aaronlangley.net"
  acl    = "public-read"
  policy = file("site-bucketPolicy.json")

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET","HEAD"]
    allowed_origins = ["*"]
    expose_headers  = [""]
  }

  website {
    index_document = "index.html"
    error_document = "error.html"

  }

  lifecycle {
    prevent_destroy = true
  }
}
