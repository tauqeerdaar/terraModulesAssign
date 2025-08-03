data "google_compute_network" "existing_vpc" {
  name    = var.vpc
  project = var.project_id
}

data "google_compute_subnetwork" "existing_subnet" {
  name    = var.subnet_name
  region  = var.region
  project = var.project_id
}
