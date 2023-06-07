resource "google_project_service" "compute" {
  project = "apt-subset-389115"
  service = "compute.googleapis.com"
  disable_on_destroy = true
}
