#Step 1: Create a list varible
variable "my_list" {
   type    = list(string)
   default = ["value1", "value2", "value3"]
}

resource "my_resource" "example" {
   
   #Step 2: Convert list to set using toset() function 
   for_each = toset(var.my_list)

   #Step 3: Iterate over the list
   name = each.value
   # Additional resource configuration...
}
