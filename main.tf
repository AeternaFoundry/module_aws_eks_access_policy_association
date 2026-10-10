resource "aws_eks_access_policy_association" "eks_access_policy_associations" {
  for_each = var.eks_access_policy_associations

  cluster_name  = each.value.cluster_name
  policy_arn    = each.value.policy_arn
  principal_arn = each.value.principal_arn
  region        = each.value.region

  access_scope {
    namespaces = each.value.access_scope.namespaces
    type       = each.value.access_scope.type
  }
}

