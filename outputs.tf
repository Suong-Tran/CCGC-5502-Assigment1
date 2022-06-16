output "resrouce_group" {
  value = module.resource_group.resource_group.name
}

output "virtual_network" {
  value = module.network.vnet.name
}

output "subnet" {
  value = module.network.subnet.name
}

output "log_analytics_workspace" {
    value = module.common.log_analytics_workspace.name
}

output "recovery_services_vault" {
    value = module.common.recovery_services_vault.name
}

output "storage_account" {
    value = module.common.storage_account.name
}

output "Linux_hostname" {
  value = module.vmlinux.Linux_hostname
}

output "Linux_public_ip_addresses" {
    value = module.vmlinux.Linux_public_ip_addresses
}

output "Linux_private_ip_address" {
  value = module.vmlinux.Linux_private_ip_address
}

output "Linux_dns" {
  value = module.vmlinux.Linux_dns
}