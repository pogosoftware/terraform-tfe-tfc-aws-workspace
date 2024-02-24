variable "tfe_organization_name" {
  description = "The name of TFC orgranization"
  type        = string
}

variable "tfe_project_name" {
  description = "The name of TFC project"
  type        = string
}

variable "tfe_workspace_name" {
  description = "The name of TFC workspace"
  type        = string
}

variable "tfe_workspace_queue_all_runs" {
  default     = false
  description = "Determinates to queue all runs or not. Defaults to `false`"
  type        = bool
}

variable "tfe_workspace_allow_destroy_plan" {
  default     = false
  description = "Determinate to allow destroy play or not. Defaults to `false`"
  type        = bool
}

variable "tfe_workspace_tag_names" {
  default     = []
  description = "The list of TFC workspace tags. Defaults to `[]`"
  type        = list(string)
}

variable "tfe_workspace_terraform_reqiured_version" {
  default     = "~> 1.7.0"
  description = "The version of terraform required to run tasks. Defaults to `~> 1.7.0`"
  type        = string
}

variable "tfc_aws_provider_auth" {
  default     = true
  description = "Defaults to `true`"
  type        = bool
}

variable "tfc_aws_workload_identity_audience" {
  default     = "aws.workload.identity"
  description = "Will be used as the aud claim for the identity token. Defaults to `aws.workload.identity`"
  type        = string
}

variable "tfc_aws_plan_role_arn" {
  description = "The ARN of the role to use for the plan phase of a run."
  type        = string
}

variable "tfc_aws_apply_role_arn" {
  description = "The ARN of the role to use for the apply phase of a run."
  type        = string
}
