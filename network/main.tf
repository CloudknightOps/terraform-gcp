
resource "google_compute_network" "dev_network" {
  # Block body 
  name = var.network_name
  auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "network_access" {
    name = var.network_access_name
    network = google_compute_network.dev_network.self_link
    allow {
      protocol = "tcp"
      ports = ["22", "80" , "3389" ]
    }
    allow {
      protocol = "icmp"
    }
  source_ranges = ["0.0.0.0/0"]
}
