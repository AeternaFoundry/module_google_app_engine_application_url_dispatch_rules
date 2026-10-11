resource "google_app_engine_application_url_dispatch_rules" "app_engine_application_url_dispatch_rules" {
  for_each = var.app_engine_application_url_dispatch_rules

  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "dispatch_rules" {
    for_each = each.value.dispatch_rules
    content {
      domain  = dispatch_rules.value.domain
      path    = dispatch_rules.value.path
      service = dispatch_rules.value.service
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

