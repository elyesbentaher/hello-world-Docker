/*resource "google_compute_instance" "maroua_instance" {
  name         = "maroua-instance"
  machine_type = "e2-micro"
  zone         = "europe-west1-d"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
*/
