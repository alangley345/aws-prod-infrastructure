output "cloudresume_frontend_secret" {
    value = module.cloudresume_frontend.cloudresume_frontend_secret
}

output "cloudresume_frontend_ID" {
    value = module.cloudresume_frontend.cloudresume_frontend_ID
}

output "cloudresume_backend_secret" {
    value = module.cloudresume_backend.cloudresume_backend_secret
}

output "cloudresume_backend_ID" {
    value = module.cloudresume_backend.cloudresume_backend_ID
}

output "cloudfront_resume_distributionID" {
    value = module.cloudresume_frontend.cloudfront_resume_distributionID
}