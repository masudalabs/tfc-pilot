module "terramorphous_bundles" {
  source           = "git@github.com:masudalabs/terramorphous.git//bootstrap-bundle?ref=main"
  tfe_project_name = "pilot"
  environments     = {}
  #   environments = {
  #     production = ["network"]
  #   }
}