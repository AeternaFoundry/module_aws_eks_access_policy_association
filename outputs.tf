output "eks_access_policy_associations_id" {
  description = "Map of id values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_access_policy_associations_access_scope" {
  description = "Map of access_scope values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => one(v.access_scope) if v.access_scope != null && length(v.access_scope) > 0 }
}
output "eks_access_policy_associations_associated_at" {
  description = "Map of associated_at values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.associated_at if v.associated_at != null && length(v.associated_at) > 0 }
}
output "eks_access_policy_associations_cluster_name" {
  description = "Map of cluster_name values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "eks_access_policy_associations_modified_at" {
  description = "Map of modified_at values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.modified_at if v.modified_at != null && length(v.modified_at) > 0 }
}
output "eks_access_policy_associations_policy_arn" {
  description = "Map of policy_arn values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.policy_arn if v.policy_arn != null && length(v.policy_arn) > 0 }
}
output "eks_access_policy_associations_principal_arn" {
  description = "Map of principal_arn values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.principal_arn if v.principal_arn != null && length(v.principal_arn) > 0 }
}
output "eks_access_policy_associations_region" {
  description = "Map of region values across all eks_access_policy_associations, keyed the same as var.eks_access_policy_associations"
  value       = { for k, v in aws_eks_access_policy_association.eks_access_policy_associations : k => v.region if v.region != null && length(v.region) > 0 }
}

