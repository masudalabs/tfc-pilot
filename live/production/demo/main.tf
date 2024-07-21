module "demo" {
  source            = "../../../modules/app-services"
  docker_image_name = "pj3677/color-app:${var.version}"
  service_name      = local.stack_name
  location          = "East US"
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

variable "version" {
  type    = string
  default = "1.0.0"
}