

resource "google_storage_bucket" "name" {
  # Block body 
  name          = "image-store.com"
  location      = "US"
  force_destroy = true
}



resource "google_compute_instance" "ec2" {
  name         = "test"
  machine_type = "ec2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {

    }
  }
  allow_stopping_for_update = true

}

