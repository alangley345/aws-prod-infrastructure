resource "aws_iam_user" "le_proxmox" {
  name = "le-promxox"

  groups = [
    "DNS"
  ]

}