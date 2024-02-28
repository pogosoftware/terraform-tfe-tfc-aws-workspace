resource "tfe_workspace" "this" {
  name                      = var.workspace
  organization              = data.tfe_organization.this.name
  project_id                = var.project_id
  queue_all_runs            = var.queue_all_runs
  allow_destroy_plan        = var.allow_destroy_plan
  tag_names                 = var.tag_names
  terraform_version         = var.terraform_reqiured_version
  remote_state_consumer_ids = var.remote_state_consumer_ids
}

resource "tfe_variable" "tfc_aws_provider_auth" {
  count = local.tfc_aws_provider_auth

  key          = "TFC_AWS_PROVIDER_AUTH"
  value        = var.aws_provider_auth
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_workload_identity_audience" {
  count = local.tfc_aws_provider_auth

  key          = "TFC_AWS_WORKLOAD_IDENTITY_AUDIENCE"
  value        = var.aws_workload_identity_audience
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_plan_role_arn" {
  count = local.tfc_aws_provider_auth

  key          = "TFC_AWS_PLAN_ROLE_ARN"
  value        = var.aws_plan_role_arn
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_apply_role_arn" {
  count = local.tfc_aws_provider_auth

  key          = "TFC_AWS_APPLY_ROLE_ARN"
  value        = var.aws_apply_role_arn
  category     = "env"
  workspace_id = tfe_workspace.this.id
}
