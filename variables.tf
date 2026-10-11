variable "notification_destinations_lookup" {
  description = <<EOT
Map of notification_destinations_lookup, attributes below
Optional:
    - display_name_contains
    - provider_config
    - type
EOT

  type = map(object({
    display_name_contains = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    type = optional(string)
  }))
}

