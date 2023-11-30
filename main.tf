provider "google" {
  credentials = file("/mnt/c/Users/msdiri/Downloads/carbide-ego-249613-60f7a4e59108.json")
  project     = "carbide-ego-249613"
  region      = "europe-west1" # Adjust this based on your preferred region
}

module "maroua_instance" {
  source = "./modules/maroua_instance"
}

terraform {
  backend "gcs" {
    bucket = "proservice_backet1"
    prefix = "./your/tfstate"
  }
}

