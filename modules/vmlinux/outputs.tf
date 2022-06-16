output "Linux_hostname" {
  value = [azurerm_linux_virtual_machine.vm[*].name]
}

output "Linux_public_ip_addresses" {
    value = [azurerm_linux_virtual_machine.vm[*].public_ip_address]
}

output "Linux_private_ip_address" {
  value = [azurerm_linux_virtual_machine.vm[*].private_ip_address]
}

output "Linux_dns" {
  value = [azurerm_public_ip.pip[*].domain_name_label]
}