output "cloudresume_backend_secret" {
    value = module.cloudresume_backend.cloudresume_backend_secret
}

output "cloudresume_backend_ID" {
    value = module.cloudresume_backend.cloudresume_backend_ID
}

output "access_token_signing" {
    value = data.local_file.pgp_key
  
}

