<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.52 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.52 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_variable.tfc_aws_apply_role_arn](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_plan_role_arn](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_provider_auth](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_workload_identity_audience](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tfc_aws_apply_role_arn"></a> [tfc\_aws\_apply\_role\_arn](#input\_tfc\_aws\_apply\_role\_arn) | The ARN of the role to use for the apply phase of a run. | `string` | n/a | yes |
| <a name="input_tfc_aws_plan_role_arn"></a> [tfc\_aws\_plan\_role\_arn](#input\_tfc\_aws\_plan\_role\_arn) | The ARN of the role to use for the plan phase of a run. | `string` | n/a | yes |
| <a name="input_tfc_aws_provider_auth"></a> [tfc\_aws\_provider\_auth](#input\_tfc\_aws\_provider\_auth) | Defaults to `true` | `bool` | `true` | no |
| <a name="input_tfc_aws_workload_identity_audience"></a> [tfc\_aws\_workload\_identity\_audience](#input\_tfc\_aws\_workload\_identity\_audience) | Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity` | `string` | `"aws.workload.identity"` | no |
| <a name="input_tfe_organization_name"></a> [tfe\_organization\_name](#input\_tfe\_organization\_name) | The name of TFC orgranization | `string` | n/a | yes |
| <a name="input_tfe_project_name"></a> [tfe\_project\_name](#input\_tfe\_project\_name) | The name of TFC project | `string` | n/a | yes |
| <a name="input_tfe_workspace_allow_destroy_plan"></a> [tfe\_workspace\_allow\_destroy\_plan](#input\_tfe\_workspace\_allow\_destroy\_plan) | Determinate to allow destroy play or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_tfe_workspace_name"></a> [tfe\_workspace\_name](#input\_tfe\_workspace\_name) | The name of TFC workspace | `string` | n/a | yes |
| <a name="input_tfe_workspace_queue_all_runs"></a> [tfe\_workspace\_queue\_all\_runs](#input\_tfe\_workspace\_queue\_all\_runs) | Determinates to queue all runs or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_tfe_workspace_tag_names"></a> [tfe\_workspace\_tag\_names](#input\_tfe\_workspace\_tag\_names) | The list of TFC workspace tags. Defaults to `[]` | `list(string)` | `[]` | no |
| <a name="input_tfe_workspace_terraform_reqiured_version"></a> [tfe\_workspace\_terraform\_reqiured\_version](#input\_tfe\_workspace\_terraform\_reqiured\_version) | The version of terraform required to run tasks. Defaults to `~> 1.7.0` | `string` | `"~> 1.7.0"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
