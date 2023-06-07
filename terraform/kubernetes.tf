resource "google_container_cluster" "ms_cluster" {
  name               = "ms-gke-cluster"
  location           = "europe-west1-b"
  initial_node_count = 1

  node_config {
    machine_type = "e2-standard-2"
  }
}

resource "google_container_node_pool" "ms_node_pool" {
  name       = "ms-node-pool"
  cluster    = google_container_cluster.ms_cluster.name
  node_count = 1

  node_config {
    machine_type = "e2-standard-2"
  }
}
