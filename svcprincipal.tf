provider "azuread" {
 # Assuming you are using the Azure AD provider for Azure Active Directory
}

# Define the Azure AD Application
resource "azuread_application" "jenkins_app" {
  display_name = "jenkins-app"
}

# Define the Azure AD Service Principal
resource "azuread_service_principal" "jenkins_sp" {
  application_id = azuread_application.jenkins_app.application_id
}

# Define the Service Principal Password (client secret)
resource "azuread_application_password" "jenkins_password" {
  application_id = azuread_application.jenkins_app.application_id
  display_name    = "Jenkins Service Principal Secret"
  end_date        = "2099-12-31T23:59:59Z"
}

# Define the Azure Role Assignment (e.g., Contributor role)
resource "azurerm_role_assignment" "jenkins_role" {
  principal_id   = azuread_service_principal.jenkins_sp.id
  role_definition_name = "Contributor"
  scope          = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
}

# Output the Service Principal credentials
output "client_id" {
  value = azuread_service_principal.jenkins_sp.application_id
}

output "client_secret" {
  value = azuread_application_password.jenkins_password.value
  sensitive = true
}

output "tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}

output "subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

# Data source to fetch current configuration
data "azurerm_client_config" "current" {}

