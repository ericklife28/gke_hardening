terraform {
  backend "gcs" {
     bucket = "terraform_cluster_hardening"
    prefix = "terraform-state/02-gke"
  }
}

