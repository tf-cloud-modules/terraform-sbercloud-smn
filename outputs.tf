output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_smn_topic.this[0].id, "")
}

output "topic_urn" {
  description = "Resource identifier of a topic, which is unique."
  value       = try(sbercloud_smn_topic.this[0].topic_urn, "")
}

output "push_policy" {
  description = "Message pushing policy. 0 indicates that the message sending fails and the message is cached in the queue. 1 indicates that the failed message is discarded."
  value       = try(sbercloud_smn_topic.this[0].push_policy, "")
}

output "subscriptions" {
  description = "Map of subscriptions created and their attributes"
  value       = sbercloud_smn_subscription.this
}