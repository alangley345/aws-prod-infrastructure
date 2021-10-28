#bucket for storing state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "myterraformcode"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}