#let's encrypt user for Docker host
output "le_dockerhost_id" {
  value = aws_iam_access_key.le_dockerhost.id
}

output "le_dockerhost_secret" {
  value = aws_iam_access_key.le_dockerhost.secret
}

#lets encrypt user for pfsense02 @ OVH
output "le_pfsense02_id" {
  value = aws_iam_access_key.le_pfsense02.id
}

output "le_pfsense02_secret" {
  value = aws_iam_access_key.le_pfsense02.secret
}

#lets encrypt user for pfsense01 @ HOME
output "le_pfsense01_id" {
  value = aws_iam_access_key.le_pfsense01.id
}

output "le_pfsense01_secret" {
  value = aws_iam_access_key.le_pfsense01.secret
}

#used for access to bucket and cf for resume frontend
output "cloudresume_id" {
  value = aws_iam_access_key.cloudresume.id
}

output "cloudresume_secret" {
   value = aws_iam_access_key.cloudresume.encrypted_secret
}
