resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.lvm
  name                = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password = each.value.admin_password
  network_interface_ids = [data.azurerm_network_interface.nic[each.key].id]
  disable_password_authentication = false
  os_disk {
  caching              = each.value.caching
  storage_account_type = each.value.storage_account_type
  }
   source_image_reference {
    publisher = each.value.vm_publisher
    offer     = each.value.vm_offer
    sku       = each.value.vm_sku
    version   = each.value.vm_version
  }
}

