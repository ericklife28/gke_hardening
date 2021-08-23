variable gcp_project_id {
  description = "The project for this network"
  type        = string
}

variable zkns {
  type    = string
  default = "solr"
}

variable "gcp_zone" {
  type    = string
  default = "us-east1-b"
}

variable "gcp_region" {
  type    = string
  default = "us-east1"
}

variable "solr_machine_type" {
  type    = string
  default = "g1-small"
}
