
#Step 1: Create a map 
variable "my_map" {
  type = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

#Step 2: Iterate over the map using for_each
resource "my_resource" "example" {
  for_each = var.my_map

  name  = each.key
  value = each.value
  # Additional resource configuration...
}
