# Sbercloud SMN Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "smn" {
    source  = "tf-cloud-modules/smn/sbercloud"

    name = "smn-test"

    subscriptions = {
    email = {
        endpoint = "mailtest@gmail.com"
        protocol = "email"
        remark   = "O&M"
    }
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_smn_subscription.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/smn_subscription) | resource |
| [sbercloud_smn_topic.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/smn_topic) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_create_subscription"></a> [create\_subscription](#input\_create\_subscription) | Determines whether an SMN subscription is created | `bool` | `true` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Topic display name, which is presented as the name of the email sender in an email message. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the topic to be created. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the SMN topic resource. | `string` | `null` | no |
| <a name="input_subscriptions"></a> [subscriptions](#input\_subscriptions) | A map of subscription definitions to create | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
| <a name="output_push_policy"></a> [push\_policy](#output\_push\_policy) | Message pushing policy. 0 indicates that the message sending fails and the message is cached in the queue. 1 indicates that the failed message is discarded. |
| <a name="output_subscriptions"></a> [subscriptions](#output\_subscriptions) | Map of subscriptions created and their attributes |
| <a name="output_topic_urn"></a> [topic\_urn](#output\_topic\_urn) | Resource identifier of a topic, which is unique. |
<!-- END_TF_DOCS -->