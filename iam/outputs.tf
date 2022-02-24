output "le_proxmox_encrypted_secret" {
  value = aws_iam_access_key.le_proxmox.secret
}