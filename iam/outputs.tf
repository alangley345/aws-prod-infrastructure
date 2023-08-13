#lets encrypt user for internal haproxy
output "le_int_haproxy_id" {
  value = aws_iam_access_key.le_int_haproxy.id
}

output "le_int_haproxy_secret" {
  value = aws_iam_access_key.le_int_haproxy.secret
}

#lets encrypt user for pfsense01 @ HOME
output "le_pfsense01_id" {
  value = aws_iam_access_key.le_pfsense01.id
}

output "le_pfsense01_secret" {
  value = aws_iam_access_key.le_pfsense01.secret
}

#used for terraform access for cloudresume
output "cloudresume_id" {
  value = aws_iam_access_key.cloudresume.id
}

output "cloudresume_secret" {
  value = aws_iam_access_key.cloudresume.encrypted_secret
}

#used for terraform access for hl7-to-rbd project
output "hl7-to-rdb_id" {
  value = aws_iam_access_key.hl7-to-rdb.id
}

output "hl7-to-rdb_secret" {
  value = aws_iam_access_key.hl7-to-rdb.encrypted_secret
}
