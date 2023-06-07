resource "google_compute_firewall" "ms_firewall" {
  name    = "ms-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-http-https"]
}
