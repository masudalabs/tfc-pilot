resource "azurerm_service_plan" "main" {
  name                = "${local.full_name}-plan"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "main" {
  name                = "${local.full_name}-app"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id
  app_settings        = var.app_settings
  site_config {
    application_stack {
      docker_image_name = var.docker_image_name
      docker_registry_url = var.docker_registry_url
    }
  }

  tags = local.full_tags
}

resource "azurerm_resource_group" "main" {
  name     = "${lower(local.full_name)}-rg"
  location = var.location
  tags     = local.full_tags
}
