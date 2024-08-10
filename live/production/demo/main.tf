module "demo" {
  source            = "../../../modules/app-services"
  docker_image_name = "pj3677/color-app:${var.app_version}"
  docker_registry_url = "https://registry.hub.docker.com/library"
  location          = "East US 2"
  environment       = terraform.workspace
  app_settings = {
    MESSAGE  = local.stack_name
    BG_COLOR = var.color
  }
}

locals {
  stack_name = lower(element(split("/", abspath(path.root)), length(split("/", abspath(path.root))) - 1))
}

variable "color" {
  type    = string
  default = "blue"
}

variable "app_version" {
  type    = string
  default = "1.0.0"
}

provider "azurerm" {
  features {}
}

output "appservice_address" {
    value = module.demo.appservice_address
}
