
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.00"
    }
  }
}
provider "google" {

  project = "########"
  region  = "us-central1"
  zone    = "us-central1-a"
}

