# output "network_interface_id" {
#   value = data.azurerm_network_interface.nic.id
# }

output "network_interface_id" {
  value = {
    for k, v in data.azurerm_network_interface.nic : k => v.id
  }
}