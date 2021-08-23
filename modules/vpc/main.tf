resource google_compute_network vpc_network {
  name                    = "${var.name_prefix}-network"
  project                 = var.gcp_project_id
  auto_create_subnetworks = false
}

resource google_compute_subnetwork vpc_network {
  name                     = google_compute_network.vpc_network.name
  ip_cidr_range            = var.ip_range
  region                   = var.gcp_region
  network                  = google_compute_network.vpc_network.self_link
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "${google_compute_network.vpc_network.name}-secondary-range"
    ip_cidr_range = var.secondary_ip_range
  }
  secondary_ip_range {
    range_name    = "${google_compute_network.vpc_network.name}-tertiary-range"
    ip_cidr_range = var.tertiary_ip_range
  }
}


