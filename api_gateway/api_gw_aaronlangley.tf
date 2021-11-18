resource "aws_apigatewayv2_api" "my_domain" {
  name          = "aaronlangley.net-api-gw"
  protocol_type = "HTTP"
  description   = "Backend to aaronlangley.net"
  
  tags          = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

 
}
