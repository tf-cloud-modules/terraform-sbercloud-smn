output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(module.smn.id, "")
}

output "topic_urn" {
  description = "Resource identifier of a topic, which is unique."
  value       = try(module.smn.topic_urn, "")
}

output "push_policy" {
  description = "Message pushing policy. 0 indicates that the message sending fails and the message is cached in the queue. 1 indicates that the failed message is discarded."
  value       = try(module.smn.push_policy, "")
}

output "subscriptions" {
  description = "Map of subscriptions created and their attributes"
  value       = try(module.smn.subscriptions, "")
}