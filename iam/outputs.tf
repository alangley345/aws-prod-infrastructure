#let's encrypt user for Proxmox host
output "le_proxmox_id" {
  value = aws_iam_access_key.le_proxmox.id
}

output "le_proxmox_secret" {
  value = aws_iam_access_key.le_proxmox.secret
}

#lets encrypt user for pfsense02 @ OVH
output "le_pfsense02_id" {
  value = aws_iam_access_key.le_pfsense02.id
}

output "le_pfsense02_secret" {
  value = aws_iam_access_key.le_pfsense02.secret
}

#used for access to bucket and cf for resume frontend
output "cloudresume_frontend_id" {
  value = aws_iam_access_key.cloudresume_frontend.id
}

output "cloudresume_frontend_secret" {
   value = aws_iam_access_key.cloudresume_frontend.encrypted_secret
}
