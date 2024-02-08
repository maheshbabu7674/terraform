resource "example_resource" "example" {
  some_property = var.example_set
  # other resource configurations...
}

# set variable type:

variable "example_set" {
  type    = set(string)
  default = ["value1", "value2", "value3"]
}
