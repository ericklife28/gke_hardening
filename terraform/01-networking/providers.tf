terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
  }
}

provider google {
  project = var.gcp_project_id
  region = var.gcp_region
  zone = var.gcp_zone
}

provider google-beta {
  project = var.gcp_project_id
}


