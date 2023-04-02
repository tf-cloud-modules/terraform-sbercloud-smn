variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the SMN topic resource."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the topic to be created."
  type        = string
}

variable "display_name" {
  description = "Topic display name, which is presented as the name of the email sender in an email message."
  type        = string
  default     = null
}

variable "create_subscription" {
  description = "Determines whether an SMN subscription is created"
  type        = bool
  default     = true
}

variable "subscriptions" {
  description = "A map of subscription definitions to create"
  type        = any
  default     = {}
}