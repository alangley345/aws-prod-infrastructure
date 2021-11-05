resource "aws_apigatewayv2_api" "resume" {
  name          = "cloudresume-api-gw"
  protocol_type = "HTTP"
  description   = "Backend to resume.aaronlangley.net"
  
  tags          = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

  cors_configuration = {
      allow_headers  = ["https://resume.aaronlangley.net"]
      allow_methods  = ["*"]
      allow_origins  = ["*"]
      expose_headers = ["*"]
  }
}