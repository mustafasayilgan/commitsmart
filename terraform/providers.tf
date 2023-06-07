provider "google" {
  credentials = file("./apt-subset-389115-dd8e3c79aca9.json")
  project     = "apt-subset-389115"
  region      = "europe-west1"
}


terraform {
  backend "gcs" {
    bucket = "tf-state-staging-test"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}