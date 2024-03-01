<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.7.0 |
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
| [tfe_variable.tfc_aws_apply_role_arn](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_plan_role_arn](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_provider_auth](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.tfc_aws_workload_identity_audience](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_github_app_installation.gha_installation](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/github_app_installation) | data source |
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Determinate to allow destroy play or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_aws_apply_role_arn"></a> [aws\_apply\_role\_arn](#input\_aws\_apply\_role\_arn) | The ARN of the role to use for the apply phase of a run.Required if `tfc_aws_provider_auth` is set to `true`. | `string` | `null` | no |
| <a name="input_aws_plan_role_arn"></a> [aws\_plan\_role\_arn](#input\_aws\_plan\_role\_arn) | The ARN of the role to use for the plan phase of a run. Required if `tfc_aws_provider_auth` is set to `true`. | `string` | `null` | no |
| <a name="input_aws_provider_auth"></a> [aws\_provider\_auth](#input\_aws\_provider\_auth) | Determinate to inject AWS creadentials or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_aws_workload_identity_audience"></a> [aws\_workload\_identity\_audience](#input\_aws\_workload\_identity\_audience) | Will be used as the aud claim for the identity token. Required if `tfc_aws_provider_auth` is set to `true`. Defaults to `aws.workload.identity` | `string` | `"aws.workload.identity"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The name of TFC project | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | Determinates to queue all runs or not. Defaults to `false` | `bool` | `false` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | The ID of workspace to share the terraform state with | `set(string)` | `null` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Indicates whether this workspace allows speculative plans | `bool` | `true` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | The list of TFC workspace tags. Defaults to `[]` | `list(string)` | `[]` | no |
| <a name="input_terraform_reqiured_version"></a> [terraform\_reqiured\_version](#input\_terraform\_reqiured\_version) | The version of terraform required to run tasks. Defaults to `~> 1.7.0` | `string` | `"~>1.7.0"` | no |
| <a name="input_trigger_patterns"></a> [trigger\_patterns](#input\_trigger\_patterns) | List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository | `list(string)` | `[]` | no |
| <a name="input_vcs_repos"></a> [vcs\_repos](#input\_vcs\_repos) | Settings for the workspace's VCS repository | <pre>object({<br>    identifier = string<br>    branch     = string<br>  })</pre> | `null` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | A relative path that Terraform will execute within | `string` | `""` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | The name of TFC workspace | `string` | n/a | yes |
| <a name="input_workspace_variables"></a> [workspace\_variables](#input\_workspace\_variables) | The workspace variables | <pre>map(object({<br>    value       = string<br>    category    = string<br>    description = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of workspace |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
