variable "workflow_repository_permissionses" {
  description = <<EOT
Map of workflow_repository_permissionses, attributes below
Required:
    - repository
Optional:
    - can_approve_pull_request_reviews
    - default_workflow_permissions
EOT

  type = map(object({
    repository                       = string
    can_approve_pull_request_reviews = optional(bool)
    default_workflow_permissions     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.workflow_repository_permissionses : (
        v.default_workflow_permissions == null || (contains(["read", "write"], v.default_workflow_permissions))
      )
    ])
    error_message = "must be one of: read, write"
  }
  validation {
    condition = alltrue([
      for k, v in var.workflow_repository_permissionses : (
        length(v.repository) >= 1 && length(v.repository) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

