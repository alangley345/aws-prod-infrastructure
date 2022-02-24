#user
resource "aws_iam_user" "le_proxmox" {
  name = "le-promxox"

  groups = [
    "DNS"
  ]

}

#groups
resource "aws_iam_user_group_membership" "le_proxmox" {
  user = aws_iam_user.le_proxmox

  groups = [
    "DNS"
  ]
}
