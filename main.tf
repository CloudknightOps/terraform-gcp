

resource "google_storage_bucket" "theo_bucket12" {
  # Block body 
  name          = "cloudknight-bucket234"
  location      = "US"
  force_destroy = true
  website {
    main_page_suffix = "index.html"
    not_found_page = "404.html"
  }
}



resource "google_compute_instance" "ec2" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  zone         = "${var.instance_zone}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.vm_static_ip.address

    }
  }
  allow_stopping_for_update = true
  depends_on = [ google_storage_bucket.theo_bucket12 ]
}


resource "google_compute_address" "vm_static_ip" {
  name = "static-ip"
  
}

