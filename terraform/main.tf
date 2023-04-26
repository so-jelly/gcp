locals {
  project_id = "<project>"     # gcloud compute projects create (billing)
  zone       = "us-central1-a" # gcloud compute zones list
}

provider "google" {
  project = local.project_id
  zone    = local.zone
}

data "google_project" "sjs" {
  project_id = local.project_id
}

resource "google_project_service" "project" {
  service            = "compute.googleapis.com"
  disable_on_destroy = false
}

resource "google_compute_instance" "main" {
  name         = "test"
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

}
