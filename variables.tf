variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where resources will be created"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "adminuser"
}

variable "public_key" {
  description = "SSH public key for the VM"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4PIYjxo9jGR+6mbYtzrfMGD6/Ps1cj++F/xrAvjeVEhP1LoCNMO1xY2+kEZ11mmQqdSUqskE6qOJemMoVW7cyt7OckEwN/w6ZiJoH1n6yE+qcXul7U1CinioXXsUAIOrJGl4BLnvS4fWIiK4//LzoIsL9byT7XzcwfE94KvWK1bgOc3PazBxbcor3TqTyzO7QIhFgPznTaXdw7Dz8L3DPm1FvEU0lA57BJwFcMWA3znAJ9Pu9sdNHFf6S4GN5yutPY0s/jYMSGMi85GF/v6gWxsfLH9keCTE/uUxgUaEN9xw6mXdjSTi40j5kDro/e7RhNmlM4tJpOYD8c5UIvNOL"
}

variable "display_name" {
  description = "The display name for the Azure AD Application"
  type        = string
  default     = "jenkins-app"
}

variable "role_definition_name" {
  description = "The role definition name for the Azure Role Assignment"
  type        = string
  default     = "Contributor"
}
