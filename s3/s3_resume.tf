resource "aws_s3_bucket" "resume" {
  bucket = "resume.aaronlangley.net"
  acl    = "public-read"
  
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

output "resume_bucket_domain_name" {
 value = "aws_s3_bucket.resume.bucket_domain_name"
}