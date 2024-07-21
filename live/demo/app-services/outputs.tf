output "appservice_address" {
  value = "App Service URL: https://${azurerm_linux_web_app.main.default_hostname}/swagger"
}