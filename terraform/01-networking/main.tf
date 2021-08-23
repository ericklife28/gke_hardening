module vpc {
  source         = "../../modules/vpc"
  gcp_project_id = var.gcp_project_id
  peering        = false
}

module firewall {
  source               = "../../modules/firewall"
  gcp_project_id       = var.gcp_project_id
  network              = module.vpc.network_link
  network_name         = module.vpc.network_name
  subnet_ip_cidr_range = module.vpc.subnet_ip_cidr_range
}












