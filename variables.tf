variable "app_engine_application_url_dispatch_rules" {
  description = <<EOT
Map of app_engine_application_url_dispatch_rules, attributes below
Required:
    - dispatch_rules (block):
        - domain (optional)
        - path (required)
        - service (required)
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    project         = optional(string)
    dispatch_rules = list(object({
      domain  = optional(string)
      path    = string
      service = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_engine_application_url_dispatch_rules : (
        length(v.dispatch_rules) >= 1
      )
    ])
    error_message = "Each dispatch_rules list must contain at least 1 items"
  }
}

