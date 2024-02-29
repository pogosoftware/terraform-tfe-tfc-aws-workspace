data "tfe_organization" "this" {}

data "tfe_github_app_installation" "gha_installation" {
  name = data.tfe_organization.this.name
}
