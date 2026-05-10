variable "rgs" {
  description = "rgs variable is to create multiple rgs using for each"
  type = map(object({
    resource_group_name = string
    location            = string
    managed_by          = optional(string)
    tags                = optional(map(string))
  }))
}


variable "stgm" {
  description = "stg variable is to create multiple storage using for each"
  type = map(object({
    storage_account_name     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string))
  }))
}

variable "vnet_subnet" {
  type = map(object({
    vnet_name           = string
    address_space       = list(string)
    location            = string
    resource_group_name = string

    subnets = map(object({
      subnet_name      = string
      address_prefixes = list(string)
    }))
  }))
}

variable "nic_configm" {
  description = "nic variable is to create multiple nic using for each"
  type = map(object({
    nic_name                      = string
    location                      = string
    resource_group_name           = string
    ip_configuration_name         = string
    private_ip_address_allocation = string
    subnet_name                   = string
    vnet_name                     = string
  }))
}

variable "pip-module" {
  description = "pip module ka use karke multiple pip bana kate h"
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    tag                 = optional(map(string))
  }))
}
variable "nsg_module" {
  description = "NSG rule create karna hai"
  type = map(object({
    nsg_name            = string
    location            = string
    resource_group_name = string
    tags                = optional(map(string))

    security_rules = map(object({
      security_rule_name                       = string
      security_rule_priority                   = number
      security_rule_direction                  = string
      security_rule_access                     = string
      security_rule_protocol                   = string
      security_rule_source_port_range          = string
      security_rule_destination_port_range     = string
      security_rule_source_address_prefix      = string
      security_rule_destination_address_prefix = string
    }))
  }))
}

variable "linexvm" {
  description = "vm create for linux vm"

  type = map(object({
    vm_name              = string
    nic_name             = string
    resource_group_name  = string
    location             = string
    vm_size              = string
    admin_username       = string
    admin_password       = string
    caching              = string
    storage_account_type = string
    vm_publisher         = string
    vm_offer             = string
    vm_sku               = string
    vm_version           = string
  }))
}


