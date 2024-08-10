module "color-app" {
  source            = "../../modules/app-services"
  docker_image_name = "pj3677/color-app:${var.app_version}"
  docker_registry_url = "https://index.docker.io"
  location          = "East US 2"
  environment       = terraform.workspace
  app_settings = {
    MESSAGE  = try(var.custom_message, terraform.workspace)
    BG_COLOR = var.color
  }
}

variable "color" {
  type    = string
  default = "blue"
}

variable "custom_message" {
  type = string
}

variable "app_version" {
  type    = string
  default = "1.0.0"
}

provider "azurerm" {
  features {}
}

output "appservice_address" {
    value = module.color-app.appservice_address
}
