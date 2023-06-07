resource "google_compute_network" "ms_network" {
  name                    = "ms-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "ms_subnetwork" {
  name          = "ms-subnetwork"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.ms_network.self_link
}
