output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data for the cluster"
  value       = module.eks.cluster_certificate_authority_data
}

output "oidc_provider_arn" {
  value       = module.eks.oidc_provider_arn
  description = "ARN of the OIDC Provider for IRSA"
}

output "cluster_oidc_issuer_url" {
  value       = module.eks.cluster_oidc_issuer_url
  description = "URL of the OIDC Provider for IRSA"
}

output "node_security_group_id" {
  value       = module.eks.node_security_group_id
  description = "Security group ID of the EKS node group"
}

output "cluster_security_group_id" {
  value       = module.eks.cluster_security_group_id
  description = "Security group ID of the EKS cluster"
}
