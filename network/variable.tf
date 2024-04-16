variable "network_name" {
  type = string 
  description = "Name of the dev_network"
  default = "dev-network"
  
}

variable "network_access_name" {
   type = string 
   description = "Name of netwok access policy"
   default = "mynetwork-allow-http-ssh-rdp-icmp"
  
}

