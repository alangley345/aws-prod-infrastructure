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

  bucket_domain_name = var.bucket_domain_name
}

output "resume_bucket_domain_name" {
 value = "module.resume.bucket_domain_name"
}