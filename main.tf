resource "tfe_project" "this" {
  organization = data.tfe_organization.this.name
  name         = var.tfe_project_name
}

resource "tfe_workspace" "this" {
  name               = var.tfe_workspace_name
  organization       = data.tfe_organization.this.name
  project_id         = tfe_project.this.id
  queue_all_runs     = var.tfe_workspace_queue_all_runs
  allow_destroy_plan = var.tfe_workspace_allow_destroy_plan
  tag_names          = var.tfe_workspace_tag_names
  terraform_version  = var.tfe_workspace_terraform_reqiured_version
}

resource "tfe_variable" "tfc_aws_provider_auth" {
  key          = "TFC_AWS_PROVIDER_AUTH"
  value        = var.tfc_aws_provider_auth
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_workload_identity_audience" {
  key          = "TFC_AWS_WORKLOAD_IDENTITY_AUDIENCE"
  value        = var.tfc_aws_workload_identity_audience
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_plan_role_arn" {
  key          = "TFC_AWS_PLAN_ROLE_ARN"
  value        = var.tfc_aws_plan_role_arn
  category     = "env"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "tfc_aws_apply_role_arn" {
  key          = "TFC_AWS_APPLY_ROLE_ARN"
  value        = var.tfc_aws_apply_role_arn
  category     = "env"
  workspace_id = tfe_workspace.this.id
}
