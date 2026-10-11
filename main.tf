data "databricks_notification_destinations" "notification_destinations_lookup" {
  for_each = var.notification_destinations_lookup

  display_name_contains = each.value.display_name_contains
  provider_config       = each.value.provider_config
  type                  = each.value.type
}

