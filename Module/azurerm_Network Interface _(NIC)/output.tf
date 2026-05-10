# output "subnet_id" {
#   value = data.azurerm_subnet.subnet.id
# }

output "subnet_id" {
  value = {for k, v in data.azurerm_subnet.subnet : k => v.id }
}