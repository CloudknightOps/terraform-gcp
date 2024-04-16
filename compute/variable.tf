variable "instance_name" {
  type        = string
  description = "Name for Good compute Instance"
  default     = "test-vm"
}

variable "instance_zone" {
  type        = string
  description = "Zone for the Google compute instance"
  default     = "us-central1-a"

}

variable "instance_type" {
  type        = string
  description = "desired type of Google compute instance"
  default     = "e2-medium"

}

variable "Bucket_name" { 
    type = string
    description = "Name of cloud storage bucket"
    default = "cloudknight-bucket234"
  
}