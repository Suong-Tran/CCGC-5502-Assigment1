resource "azurerm_public_ip" "loadbalancer-pubip" {
  name                = var.loadbalancer-pubip
  location            = var.location
  resource_group_name = var.rg2
  allocation_method   = "Static"
  domain_name_label   = element(var.domain_name_label, 0)[0]
}

resource "azurerm_lb" "loadbalancer" {
  name                = var.loadbalancer
  location            = var.location
  resource_group_name = var.rg2
  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration["pubip"]
    public_ip_address_id = azurerm_public_ip.lbpubip.id
  }
}