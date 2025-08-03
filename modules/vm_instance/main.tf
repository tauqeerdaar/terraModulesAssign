resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.disk_size
    }
  }

  network_interface {
    subnetwork = var.subnet_name
  }
}
