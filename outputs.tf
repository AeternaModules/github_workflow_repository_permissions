output "workflow_repository_permissionses_id" {
  description = "Map of id values across all workflow_repository_permissionses, keyed the same as var.workflow_repository_permissionses"
  value       = { for k, v in github_workflow_repository_permissions.workflow_repository_permissionses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workflow_repository_permissionses_can_approve_pull_request_reviews" {
  description = "Map of can_approve_pull_request_reviews values across all workflow_repository_permissionses, keyed the same as var.workflow_repository_permissionses"
  value       = { for k, v in github_workflow_repository_permissions.workflow_repository_permissionses : k => v.can_approve_pull_request_reviews if v.can_approve_pull_request_reviews != null }
}
output "workflow_repository_permissionses_default_workflow_permissions" {
  description = "Map of default_workflow_permissions values across all workflow_repository_permissionses, keyed the same as var.workflow_repository_permissionses"
  value       = { for k, v in github_workflow_repository_permissions.workflow_repository_permissionses : k => v.default_workflow_permissions if v.default_workflow_permissions != null && length(v.default_workflow_permissions) > 0 }
}
output "workflow_repository_permissionses_repository" {
  description = "Map of repository values across all workflow_repository_permissionses, keyed the same as var.workflow_repository_permissionses"
  value       = { for k, v in github_workflow_repository_permissions.workflow_repository_permissionses : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

