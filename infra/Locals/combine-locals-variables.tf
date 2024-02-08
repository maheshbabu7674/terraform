variable location {
  description = "Location of server"
  type        = string
  default     = "finland"
}

variable server_name {
  description = "Name of server"
  type        = string
  default     = "primary-app-server"
}


locals {
    server_details = "${var.location}-${var.server_name}"
}


#output:

# finland-primary-app-server


