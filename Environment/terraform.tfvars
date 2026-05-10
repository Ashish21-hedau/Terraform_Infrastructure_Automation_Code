rgs = {
  rg1 = {
    resource_group_name = "Tata-banking-project-rg"
    location            = "West US"
    managed_by          = "RJIO Finance Project"
    tags = {
      environment = "Dev"
  } }
}
stgm = {
  "SA1" = {
    storage_account_name     = "tatabankingstgrhuit"
    resource_group_name      = "Tata-banking-project-rg"
    location                 = "West US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "dev-staging"
    }
  }
}
vnet_subnet = {
  vnet1 = {
    vnet_name           = "Tata-banking-project-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "West US"
    resource_group_name = "Tata-banking-project-rg"

    subnets = {
      subnet1 = {
        subnet_name      = "Tata-banking-project-floor1.frontend"
        address_prefixes = ["10.0.1.0/24"]
      },
      subnet2 = {
        subnet_name      = "Tata-banking-project-floor2.backend"
        address_prefixes = ["10.0.2.0/24"]
      },
      subnet3 = {
        subnet_name      = "AzureBastionSubnet"
        address_prefixes = ["10.0.3.0/24"]
      }
    }
  }
}
nic_configm = {
  nic1 = {
    nic_name                      = "Tata-banking-project-nic"
    location                      = "West US"
    resource_group_name           = "Tata-banking-project-rg"
    ip_configuration_name         = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "Tata-banking-project-floor1.frontend"
    vnet_name                     = "Tata-banking-project-vnet"
  }
}
pip-module = {
  pip1 = {
    pip_name            = "Tata-banking-project-pipA"
    resource_group_name = "Tata-banking-project-rg"
    location            = "West US"
    allocation_method   = "Static"
    tags = {
      environment = "Dev-Production"
    }
  }
  pip2 = {
    pip_name            = "Tata-banking-project-pipB"
    resource_group_name = "Tata-banking-project-rg"
    location            = "West US"
    allocation_method   = "Static"
    tags = {
      environment = "Dev-Production"
    }
  }
  pip3 = {
    pip_name            = "Tata-banking-project-pipC"
    resource_group_name = "Tata-banking-project-rg"
    location            = "West US"
    allocation_method   = "Static"
    tags = {
      environment = "Deva-Production"
    }
  }
}
nsg_module = {
  nsg1 = {
    nsg_name            = "Tata-banking-project-NSGrule"
    location            = "West US"
    resource_group_name = "Tata-banking-project-rg"
    tags = {
      environment = "Nsg-Production"
    }

    security_rules = {
      rule1 = {
        security_rule_name                       = "ssh"
        security_rule_priority                   = 100
        security_rule_direction                  = "Inbound"
        security_rule_access                     = "Allow"
        security_rule_protocol                   = "Tcp"
        security_rule_source_port_range          = "*"
        security_rule_destination_port_range     = "22"
        security_rule_source_address_prefix      = "*"
        security_rule_destination_address_prefix = "*"
      }

      rule2 = {
        security_rule_name                       = "nginx"
        security_rule_priority                   = 110
        security_rule_direction                  = "Inbound"
        security_rule_access                     = "Allow"
        security_rule_protocol                   = "Tcp"
        security_rule_source_port_range          = "*"
        security_rule_destination_port_range     = "80"
        security_rule_source_address_prefix      = "*"
        security_rule_destination_address_prefix = "*"
      }
    }
  }
}
linexvm = {
  vm1 = {
    vm_name             = "Shroti-VM1"
    nic_name            = "Tata-banking-project-nic"
    resource_group_name = "Tata-banking-project-rg"
    location            = "West US"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "Megha@#1990"

    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    vm_publisher         = "Canonical"
    vm_offer             = "0001-com-ubuntu-server-jammy"
    vm_sku               = "22_04-lts"
    vm_version           = "latest"
  }
}
