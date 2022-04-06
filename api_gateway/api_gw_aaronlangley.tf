resource "aws_apigatewayv2_api" "my_domain" {
  name          = "aaronlangley.net-api-gw"
  protocol_type = "HTTP"
  description   = "Backend to aaronlangley.net"
  cors_configuration {
    allow_origins = ["*"]
    allow_methods = ["*"]
    allow_headers = ["*"]
    max_age = 300
  }
  
  tags          = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

 
}
