resource "tfe_workspace" "this" {
  name                      = var.workspace
  organization              = data.tfe_organization.this.name
  project_id                = var.project_id
  queue_all_runs            = var.queue_all_runs
  allow_destroy_plan        = var.allow_destroy_plan
  tag_names                 = var.tag_names
  terraform_version         = var.terraform_reqiured_version
  remote_state_consumer_ids = var.remote_state_consumer_ids
  working_directory         = var.working_directory
  trigger_patterns          = var.trigger_patterns
  speculative_enabled       = var.speculative_enabled

  dynamic "vcs_repo" {
    for_each = var.vcs_repos == null ? [] : [var.vcs_repos]

    content {
      github_app_installation_id = data.tfe_github_app_installation.gha_installation.id
      identifier                 = vcs_repo.value.identifier
      branch                     = vcs_repo.value.branch
    }
  }
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
