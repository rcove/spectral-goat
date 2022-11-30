resource "azurerm_subnet" "terraform_external_subnet" {
  name                 = var.external_subnet_name
  resource_group_name  = azurerm_resource_group.terraform_rg.name
  virtual_network_name = azurerm_virtual_network.terraform_vnet.name
  address_prefixes     = [var.external_subnet_address_prefixes]
}
resource "azurerm_subnet" "terraform_internal_subnet" {
  name                 = var.internal_subnet_name
  resource_group_name  = azurerm_resource_group.terraform_rg.name
  virtual_network_name = azurerm_virtual_network.terraform_vnet.name
  address_prefixes     = [var.internal_subnet_address_prefixes]
}
