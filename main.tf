
terraform {
  backend "gcs" {
  bucket = "${var.bucket_name}"
  prefix = "terraform/state" 
  }
}

# Calling Network module

module "dev_network" {
  source       = "./network"
  network_name = "dev-network"
}

# Calling Compute module
module "compute" {
  source  = "./compute"
  network = var.network
}

