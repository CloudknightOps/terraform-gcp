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
    network = "${var.network}"
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




resource "google_storage_bucket" "theo_bucket12" {
  # Block body 
  name          = "${var.Bucket_name}"
  location      = "US"
  force_destroy = true
  website {
    main_page_suffix = "index.html"
    not_found_page = "404.html"
  }
}


