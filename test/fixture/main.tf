provider "azurerm" {
  features {}
}

locals {
  application = random_id.this.hex
  environment = "test"
}

resource "random_id" "this" {
  byte_length = 8
}

resource "azurerm_resource_group" "this" {
  name     = "rg-${local.application}-${local.environment}"
  location = var.location
}
