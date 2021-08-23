output gcp_region {
  value = var.gcp_region
}

output network_id {
  value = google_compute_network.vpc_network.id
}

output network_name {
  value = google_compute_network.vpc_network.name
}

output network_link {
  value = google_compute_network.vpc_network.self_link
}

output network {
  value = google_compute_network.vpc_network
}

output subnetwork {
  description = "Main subnetwork"
  value       = google_compute_subnetwork.vpc_network
}

output subnet_ip_cidr_range {
  description = "CIDR range of the main subnetwork"
  value       = google_compute_subnetwork.vpc_network.ip_cidr_range
}

output secondary_range_name {
  description = "Name of the secondary ip range"
  value       = google_compute_subnetwork.vpc_network.secondary_ip_range.0.range_name
}

output tertiary_range_name {
  description = "Name of the tertiary ip range"
  value       = google_compute_subnetwork.vpc_network.secondary_ip_range.1.range_name
}
