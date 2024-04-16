<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 5.00 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |


## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute"></a> [compute](#module\_compute) | ./compute | n/a |
| <a name="module_dev_network"></a> [dev\_network](#module\_dev\_network) | ./network | n/a |



## Modules

compute module 

## Resources

| Name | Type |
|------|------|
| [google_compute_address.vm_static_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_instance.ec2](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_storage_bucket.theo_bucket12](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_Bucket_name"></a> [Bucket\_name](#input\_Bucket\_name) | Name of cloud storage bucket | `string` | `"cloudknight-bucket234"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name for Good compute Instance | `string` | `"test-vm"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | desired type of Google compute instance | `string` | `"e2-medium"` | no |
| <a name="input_instance_zone"></a> [instance\_zone](#input\_instance\_zone) | Zone for the Google compute instance | `string` | `"us-central1-a"` | no |
| <a name="input_network"></a> [network](#input\_network) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_link"></a> [instance\_link](#output\_instance\_link) | The URL of the Instance created |
| <a name="output_network_IP"></a> [network\_IP](#output\_network\_IP) | The internal ip address of the instance |


## Modules

Network Module

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.network_access](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.dev_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_access_name"></a> [network\_access\_name](#input\_network\_access\_name) | Name of netwok access policy | `string` | `"mynetwork-allow-http-ssh-rdp-icmp"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the dev\_network | `string` | `"dev-network"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | The output name of the network created |
