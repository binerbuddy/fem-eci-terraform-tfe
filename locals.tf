locals {
  project = {
    "fem-eci-project" = {
      description = "Example project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description = "Example workspace"
      project_id  = module.project["fem-eci-project"].id
    }
  }
}
