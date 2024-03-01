variable "project_id" {
  description = "The name of TFC project"
  type        = string
}

variable "workspace" {
  description = "The name of TFC workspace"
  type        = string
}

variable "queue_all_runs" {
  default     = false
  description = "Determinates to queue all runs or not. Defaults to `false`"
  type        = bool
}

variable "allow_destroy_plan" {
  default     = false
  description = "Determinate to allow destroy play or not. Defaults to `false`"
  type        = bool
}

variable "tag_names" {
  default     = []
  description = "The list of TFC workspace tags. Defaults to `[]`"
  type        = list(string)
}

variable "terraform_reqiured_version" {
  default     = "~>1.7.0"
  description = "The version of terraform required to run tasks. Defaults to `~> 1.7.0`"
  type        = string
}

variable "remote_state_consumer_ids" {
  default     = null
  description = "The ID of workspace to share the terraform state with"
  type        = set(string)
}

variable "vcs_repos" {
  default     = null
  description = "Settings for the workspace's VCS repository"
  type = object({
    identifier = string
    branch     = string
  })
}

variable "working_directory" {
  default     = ""
  description = "A relative path that Terraform will execute within"
  type        = string
}

variable "trigger_patterns" {
  default     = []
  description = "List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository"
  type        = list(string)
}

variable "speculative_enabled" {
  default     = true
  description = "Indicates whether this workspace allows speculative plans"
  type        = bool
}

variable "workspace_variables" {
  default     = {}
  description = "The workspace variables"
  type = map(object({
    value       = string
    category    = string
    description = optional(string)
  }))
}

### AWS AUTH PROVIDER
variable "aws_provider_auth" {
  default     = false
  description = "Determinate to inject AWS creadentials or not. Defaults to `false`"
  type        = bool
}

variable "aws_workload_identity_audience" {
  default     = "aws.workload.identity"
  description = "Will be used as the aud claim for the identity token. Required if `tfc_aws_provider_auth` is set to `true`. Defaults to `aws.workload.identity`"
  type        = string
}

variable "aws_plan_role_arn" {
  default     = null
  description = "The ARN of the role to use for the plan phase of a run. Required if `tfc_aws_provider_auth` is set to `true`."
  type        = string
}

variable "aws_apply_role_arn" {
  default     = null
  description = "The ARN of the role to use for the apply phase of a run.Required if `tfc_aws_provider_auth` is set to `true`."
  type        = string
}
