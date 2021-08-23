resource "google_compute_firewall" "icmp" {
  name = "${var.network_name}-allow-icmp"
  project = var.gcp_project_id
  direction = "INGRESS"
  network = var.network
  allow {
    protocol = "icmp"
  }
  priority = 65534
  description = "Allow icmp traffic inside vpc"
}


resource "google_compute_firewall" "allow_internal" {
  name = "${var.network_name}-allow-internal"
  project = var.gcp_project_id
  disabled = true
  direction = "INGRESS"
  network = var.network
  description = "Allow all traffic inside vpc"
  source_ranges = [var.subnet_ip_cidr_range]

  allow {
    protocol = "all"
  }
  priority = 65534
}

resource "google_compute_firewall" "allow_ssh_iap" {
  name = "${var.network_name}-allow-ssh-iap"
  project = var.gcp_project_id
  direction = "INGRESS"
  network = var.network
  description = "Allow IAP tunneling for ssh only"
  // 35.235.240.0/20 matches the google address googles uses for IAP tunneling
  source_ranges = ["35.235.240.0/20"]
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
}

resource "google_compute_firewall" "allow_health_checks" {
  name = "${var.network_name}-allow-health-checks"
  project = var.gcp_project_id
  direction = "INGRESS"
  network = var.network
  description = "Allow google health check to instances tagged with 'allow-internal-health-checks'"
  source_ranges = ["35.191.0.0/16", "130.211.0.0/22"]
  target_tags = ["allow-internal-health-checks"]
  allow {
    protocol = "tcp"
  }
}

