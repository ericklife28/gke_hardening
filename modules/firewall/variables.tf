variable "gcp_project_id" {
   description = "The project for these firewall-rules"
   type = string
}

variable "network" {
  description = "Network which these firewall-rules are applied"
  type = string
}

variable "network_name" {
  description = "Network name to prefix all firewall rules created"
  type = string
}

variable "subnet_ip_cidr_range"{
  description = "CIRD range for the subnet"
  type        = string
}

