locals {
  project = {
    "fem-eci-project" = {
      description = "Example project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description         = "Example workspace"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }

    "fem-eci-github" = {
      description         = "Example workspace"
      execution_mode      = "local"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }
  }
}
