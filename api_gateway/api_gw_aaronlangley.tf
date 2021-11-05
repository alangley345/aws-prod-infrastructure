resource "aws_apigatewayv2_api" "resume" {
  name          = "cloudresume-api-gw"
  protocol_type = "HTTP"
  description   = "Backend to resume.aaronlangley.net"
  
  tags          = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

 
}

output "api_aaronlangley_id" {
  value = "aws_apigatewayv2_api.id"
}