output "app_engine_application_url_dispatch_rules_id" {
  description = "Map of id values across all app_engine_application_url_dispatch_rules, keyed the same as var.app_engine_application_url_dispatch_rules except keys with no id are omitted"
  value       = { for k, v in google_app_engine_application_url_dispatch_rules.app_engine_application_url_dispatch_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_application_url_dispatch_rules_deletion_policy" {
  description = "Map of deletion_policy values across all app_engine_application_url_dispatch_rules, keyed the same as var.app_engine_application_url_dispatch_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_app_engine_application_url_dispatch_rules.app_engine_application_url_dispatch_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "app_engine_application_url_dispatch_rules_dispatch_rules" {
  description = "Map of dispatch_rules values across all app_engine_application_url_dispatch_rules, keyed the same as var.app_engine_application_url_dispatch_rules except keys with no dispatch_rules are omitted"
  value       = { for k, v in google_app_engine_application_url_dispatch_rules.app_engine_application_url_dispatch_rules : k => v.dispatch_rules if v.dispatch_rules != null && length(v.dispatch_rules) > 0 }
}
output "app_engine_application_url_dispatch_rules_project" {
  description = "Map of project values across all app_engine_application_url_dispatch_rules, keyed the same as var.app_engine_application_url_dispatch_rules except keys with no project are omitted"
  value       = { for k, v in google_app_engine_application_url_dispatch_rules.app_engine_application_url_dispatch_rules : k => v.project if v.project != null && length(v.project) > 0 }
}

