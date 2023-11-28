provider "google" {
  credentials = file("/mnt/c/Users/msdiri/Downloads/carbide-ego-249613-60f7a4e59108.json")
  project     = "carbide-ego-249613"
  region      = "europe-west1" # Adjust this based on your preferred region
}

resource "google_storage_bucket" "my_bucket" {
  name          = "proservice_backet"
  location      = "US" # Adjust this based on your preferred region
  force_destroy = true # This allows Terraform to destroy the bucket
}
