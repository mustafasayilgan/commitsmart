resource "google_compute_disk" "ms_disk" {
  name  = "ms-persistent-disk"
  zone  = "europe-west1-b"
  type  = "pd-standard"
  size  = 100

  labels = {
    environment = "dev"
  }

  lifecycle {
    ignore_changes = [size]
  }

  physical_block_size_bytes = 4096
}

# resource "google_container_cluster" "m_cluster" {
#   # ... existing configuration ...

#   node_config {
#     # ... existing configuration ...

#     local_ssd_count = 1
#   }

#   lifecycle {
#     ignore_changes = [node_config[0].local_ssd_count]
#   }
# }
