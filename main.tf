resource "sbercloud_smn_topic" "this" {
  count = var.create ? 1 : 0

  region       = var.region
  name         = var.name
  display_name = var.display_name
}