resource "aws_dynamodb_table" "resume" {
  name           = "resume.aaronlangley.net"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "event"
 
  attribute {
    name = "event"
    type = "S"
  }
  
  tags = {
    purpose   = "cloudresumechallenge"
    Environment = "production"
  }
}