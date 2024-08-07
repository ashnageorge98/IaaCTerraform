.
├── main.tf
├── variables.tf
├── terraform.tfvars
└── modules
    └── resource_group
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
--

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}
