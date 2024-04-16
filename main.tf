
# Calling Network module

module "dev_network" {
    source = "./network"
    network_name = "dev-network"
}

module "compute" {
    source =  "./compute"
  
}

