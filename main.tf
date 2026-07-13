resource "github_workflow_repository_permissions" "workflow_repository_permissionses" {
  for_each = var.workflow_repository_permissionses

  repository                       = each.value.repository
  can_approve_pull_request_reviews = each.value.can_approve_pull_request_reviews
  default_workflow_permissions     = each.value.default_workflow_permissions
}

