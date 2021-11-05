resource "aws_apigatewayv2_api" "api" {
  name          = "aaronlangley.net-api-gw"
  protocol_type = "HTTP"
  description   = "Backend to aaronlangley.net"
  
  tags          = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

 
}

output "api_aaronlangley_id" {
  value = aws_apigatewayv2_api.api.id
}
