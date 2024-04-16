output "network_name" {
    value = google_compute_network.dev_network.self_link 
    description = "The output name of the network created"
}
#outputing  this attribute and reference it in the compute module