
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.00"
    }
  }
}
provider "google" {

  project = "qwiklabs-gcp-03-643b2a6329c8"

  region = "us-central1"
  zone   = "us-central1-a"
}
