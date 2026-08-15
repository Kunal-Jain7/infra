output "repository_urls" {
  description = "Map of repository name to repository URL"
  value       = { for repo in aws_ecr_repository.main : repo.name => repo.repository_url }
}
