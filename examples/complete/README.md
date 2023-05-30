## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_smn"></a> [smn](#module\_smn) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
| <a name="output_push_policy"></a> [push\_policy](#output\_push\_policy) | Message pushing policy. 0 indicates that the message sending fails and the message is cached in the queue. 1 indicates that the failed message is discarded. |
| <a name="output_subscriptions"></a> [subscriptions](#output\_subscriptions) | Map of subscriptions created and their attributes |
| <a name="output_topic_urn"></a> [topic\_urn](#output\_topic\_urn) | Resource identifier of a topic, which is unique. |
<!-- END_TF_DOCS -->