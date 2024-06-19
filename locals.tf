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
      vcs_repo_identifier = "binerbuddy/fem-eci-terraform-tfe"
    }
  }
}
