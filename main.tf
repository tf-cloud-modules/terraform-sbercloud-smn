resource "sbercloud_smn_topic" "this" {
  count = var.create ? 1 : 0

  region       = var.region
  name         = var.name
  display_name = var.display_name
}

resource "sbercloud_smn_subscription" "this" {
  for_each = { for k, v in var.subscriptions : k => v if var.create && var.create_subscription }

  region    = var.region
  topic_urn = sbercloud_smn_topic.this[0].topic_urn
  endpoint  = try(each.value.endpoint)
  protocol  = try(each.value.protocol)
  remark    = try(each.value.remark, null)
}