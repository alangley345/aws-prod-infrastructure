#user
resource "aws_iam_user" "le_proxmox" {
  name = "le-promxox"
}

#groups
resource "aws_iam_user_group_membership" "le_proxmox" {
  user = aws_iam_user.le_proxmox.name

  groups = [
    "DNS"
  ]
}

#access keys
resource "aws_iam_access_key" "le_proxmox" {
  user    = aws_iam_user.le_proxmox.name
  #pgp_key = var.pgp_key
}