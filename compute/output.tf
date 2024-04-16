output "network_IP" {
  value       = google_compute_instance.ec2.instance_id
  description = " The internal ip address of the instance"
}

output "instance_link" {
  value       = google_compute_instance.ec2.self_link
  description = "The URL of the Instance created"
}
