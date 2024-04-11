
#Step 1: Create a map variable
variable "my_map" {
  type = map(string)
  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

#Step 2: Fetch keys of map
locals {
  my_keys = keys(var.my_map)
}

#Step 3: iterate over map using keys and count.index meta argument
resource "my_resource" "example" {
  count = length(local.my_keys)

  name  = local.my_keys[count.index]
  value = var.my_map[local.my_keys[count.index]]
  # Additional resource configuration...
}
