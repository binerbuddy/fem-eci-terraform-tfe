terraform {
  cloud {
    organization = "Home_Development"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}
