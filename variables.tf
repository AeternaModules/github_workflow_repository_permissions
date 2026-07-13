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
  # --- Unconfirmed validation candidates, derived from github_workflow_repository_permissions's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: default_workflow_permissions
  #   condition: contains(["read", "write"], value)
  #   message:   must be one of: read, write
  # path: repository
  #   condition: length(value) >= 1 && length(value) <= 100
  #   message:   must be between 1 and 100 characters
}

