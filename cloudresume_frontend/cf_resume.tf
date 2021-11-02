resource "aws_cloudfront_distribution" "resume" {
  origin {
    domain_name = "${aws_s3_bucket.resume.bucket_domain_name}"
    origin_id   = "mycloudresume"
    
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Some comment"
  default_root_object = "index.html"

  #logging_config {
  # include_cookies = false
  # bucket          = "mylogs.s3.amazonaws.com"
  # prefix          = "myprefix"
  #}
  

  aliases = ["resume.aaronlangley.net"]

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "mycloudresume"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
   
    }
  }

  tags = {
    Environment = "production"
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.resume.domain_name
}