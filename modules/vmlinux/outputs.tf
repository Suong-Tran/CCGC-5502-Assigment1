output "Linux_hostname" {
  value = [azurerm_linux_virtual_machine.linux-vm[*].name]
}

output "Linux_public_ip_addresses" {
    value = [azurerm_linux_virtual_machine.linux-vm[*].public_ip_address]
}

output "Linux_private_ip_address" {
  value = [azurerm_linux_virtual_machine.linux-vm[*].private_ip_address]
}

output "Linux_dns" {
  value = [azurerm_public_ip.linux-pip[*].domain_name_label]
}