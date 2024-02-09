#Step 1: Create a set
variable "my_set" {
   type    = set(string)
   default = ["value1", "value2", "value3"]
}

#Step 2: Convert set to list
locals {
   my_list = tolist(var.my_set)
}

#Step 3: Use count to iterate
resource "my_resource" "example" {
   count = length(local.my_list)

   name = local.my_list[count.index]
   # Additional resource configuration...
}
