variable gcp_region {
  description = "The region for this network (default us-east1)"
  type        = string
  default     = "us-east1"
}

variable gcp_project_id {
  description = "The project for this network"
  type        = string
}

variable name_prefix {
  description = "Network object name prefix (default is terraform)"
  type        = string
  default     = "terraform"
}

variable ip_range {
  description = "Primary ip subnet cidr (should be in 10.170.0.0/16) -- contact devops for allocation"
  type        = string
  default     = "10.170.1.0/24"
}

variable secondary_ip_range {
  description = "Secondary ip subnet range (should be next network after ip_range) -- contact devops for allocation"
  type        = string
  default     = "10.170.2.128/25"
}

variable tertiary_ip_range {
  description = "Tertiary ip subnet range (should be next network after secondary_ip_range) -- contact devops for allocation"
  type        = string
  default     = "10.170.2.0/25"
}

variable peering {
  description = "Enable to peer with on-prem vpc (make sure you get network assignment and set ip_range correctly"
  type        = bool
  default     = false
}

variable peering_project_id {
  description = "Project to peer with if peering is enabled"
  type        = string
  default     = "mcc-digital-equinix-peering"
}

variable peering_network_name {
  description = "Network name to peer with if peering is enabled (name NOT link or id)"
  type        = string
  default     = "default"
}

variable enable_proxy_subnet {
  description = "If enabled, creates a proxy subnet on 10.100.100.0/24 that is used only for proxy target load-balancing"
  type        = bool
  default     = false
}
