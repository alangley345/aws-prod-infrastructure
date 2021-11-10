resource "aws_dynamodb_table" "resume" {
  name           = "resume.aaronlangley.net"
  billing_mode   = "PAY_PER_REQUEST"
  read_capacity  = 1
  write_capacity = 1
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