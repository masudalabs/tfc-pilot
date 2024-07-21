locals {
  full_name = "${random_pet.app_server.id}-${var.environment}"

  # somando dois dicionários em um único dict
  full_tags = merge({ manager = "Terraform", environment = var.environment }, var.service_extra_tags)
}

resource "random_pet" "app_server" {
  keepers = {
    location = var.location
  }
}