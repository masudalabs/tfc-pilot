locals {
  full_name = "${var.service_name}-${var.environment}"

  # somando dois dicionários em um único dict
  full_tags = merge({ manager = "Terraform", environment = var.environment }, var.service_extra_tags)
}