provider "azurerm" {
  features {}
}

resource "random_id" "this" {
  byte_length = 8
}

module "foobar" {
  # source = "github.com/equinor/terraform-azurerm-foobar?ref=v0.0.0"
  source = "../.."

  resource_group_name = var.resource_group_name
  location            = var.location
}
