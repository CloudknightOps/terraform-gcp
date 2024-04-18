
terraform {
  backend "gcs" {
  bucket = "cloudknight-bucket234"
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
  network_id = module.dev_network.network_id 
}

