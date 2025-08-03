resource "google_compute_firewall" "postgres_rules" {
  project     = var.project_id
  name        = var.fw_rule
  network     = var.vpc
  description = "Creates firewall rule for postgres"

  allow {
    protocol = "tcp"
    ports    = ["5432"]
  }

  source_ranges = ["0.0.0.0/0"]
}
