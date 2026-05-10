module "rg" {
  source = "../Module/azurerm_resource_group"
  rg     = var.rgs
}
module "stg" {
  source     = "../Module/azurerm_storage_account"
  stgs       = var.stgm
  depends_on = [module.rg]
}
module "vnet-subnet" {
  source      = "../Module/azurerm_Vnet_Subnet"
  vnet_subnet = var.vnet_subnet
  depends_on  = [module.rg]
}
module "nic" {
  source     = "../Module/azurerm_Network Interface _(NIC)"
  nic_config = var.nic_configm
  depends_on = [module.vnet-subnet, module.rg]
}
module "pip" {
  source     = "../Module/azurerm_Public IP_(PIP)"
  pips       = var.pip-module
  depends_on = [module.rg]
}
module "vm_linex_nsg" {
  source     = "../Module/azurerm_Network Security Group_(NSG)"
  nsgrule    = var.nsg_module
  depends_on = [module.rg, module.vnet-subnet, ]
}
module "lvm" {
  source     = "../Module/azurerm_linux_virtual_machine_(VM)"
  lvm        = var.linexvm
  depends_on = [module.nic, module.pip, module.rg, module.vnet-subnet, ]
}
