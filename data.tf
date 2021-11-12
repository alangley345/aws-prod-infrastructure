data "local_file" "pgp_key" {
  filename = "public-terraform-signing.asc"
}