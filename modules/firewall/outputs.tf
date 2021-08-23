output "firewall_rule_icmp"{
  value = google_compute_firewall.icmp.name
}

output "firewall_rule_allow_internal" {
  value = google_compute_firewall.allow_internal.name
}

output "firewall_rule_allow_ssh_iap" {
  value = google_compute_firewall.allow_ssh_iap.name
}

output "firewall_rule_allow_health_checks" {
  value = google_compute_firewall.allow_health_checks.name
}
