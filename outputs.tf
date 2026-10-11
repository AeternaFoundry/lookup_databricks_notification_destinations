output "notification_destinations_lookup_display_name_contains" {
  description = "Map of display_name_contains values across all notification_destinations_lookup, keyed the same as var.notification_destinations_lookup except keys with no display_name_contains are omitted"
  value       = { for k, v in data.databricks_notification_destinations.notification_destinations_lookup : k => v.display_name_contains if v.display_name_contains != null && length(v.display_name_contains) > 0 }
}
output "notification_destinations_lookup_notification_destinations" {
  description = "Map of notification_destinations values across all notification_destinations_lookup, keyed the same as var.notification_destinations_lookup except keys with no notification_destinations are omitted"
  value       = { for k, v in data.databricks_notification_destinations.notification_destinations_lookup : k => v.notification_destinations if v.notification_destinations != null && length(v.notification_destinations) > 0 }
}
output "notification_destinations_lookup_provider_config" {
  description = "Map of provider_config values across all notification_destinations_lookup, keyed the same as var.notification_destinations_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_notification_destinations.notification_destinations_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "notification_destinations_lookup_type" {
  description = "Map of type values across all notification_destinations_lookup, keyed the same as var.notification_destinations_lookup except keys with no type are omitted"
  value       = { for k, v in data.databricks_notification_destinations.notification_destinations_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

