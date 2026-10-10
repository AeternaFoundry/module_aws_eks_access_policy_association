variable "eks_access_policy_associations" {
  description = <<EOT
Map of eks_access_policy_associations, attributes below
Required:
    - cluster_name
    - policy_arn
    - principal_arn
    - access_scope (block):
        - namespaces (optional)
        - type (required)
Optional:
    - region
EOT

  type = map(object({
    cluster_name  = string
    policy_arn    = string
    principal_arn = string
    region        = optional(string)
    access_scope = object({
      namespaces = optional(set(string))
      type       = string
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

