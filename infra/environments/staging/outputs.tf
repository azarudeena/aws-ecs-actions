output "ecs_url" {
  value       = module.staging_infra.app_url
  description = "The ECS app URL"
}

output "access_key" {
  value       = module.staging_infra.access_key
  description = "User Access Key"
  sensitive = true
}

output "secret_key" {
  value       = module.staging_infra.secret_key
  description = "User Secret Key"
  sensitive = true
}

output "ecs_service" {
  value       = module.staging_infra.ecs_service
  description = "Ecs service name"
}

output "ecs_cluster" {
  value       = module.staging_infra.ecs_cluster
  description = "ECS cluster Name"
}

output "ecr_repository_name" {
  value       = module.staging_infra.ecr_repository_name
  description = "The ECS Repo Name"
}

output "region" {
  value       = module.staging_infra.aws_region
  description = "AWS region"
}