module "resource_group" {
  source = "./modules/rgroup"
  resource_group = "3552-Assignment1-RG"
}

module "network" {
  source = "./modules/network"
  resource_group = module.resource_group.resource_group.name
  location = module.resource_group.resource_group.location
}

module "common" {
  source = "./modules/common"
  resource_group = module.resource_group.resource_group.name
  location = module.resource_group.resource_group.location

  depends_on = [module.resource_group]
}

module "vmlinux" {
  source = "./modules/vmlinux"
  resource_group = module.resource_group.resource_group.name
  location = module.resource_group.resource_group.location
  nb_count = 2
  depends_on = [module.network]
  linux_name = "linux-3552"
  subnet_id = module.network.subnet.id
  storage_account_uri = module.common.storage_account.primary_blob_endpoint
}

module "vmwindows" {
  source = "./modules/vmwindows"
  resource_group = module.resource_group.resource_group.name
  location = module.resource_group.resource_group.location
  depends_on = [module.network]
  windows_name = "wvm--3552"
  subnet_id = module.network.subnet.id
  storage_account_uri = module.common.storage_account.primary_blob_endpoint
}