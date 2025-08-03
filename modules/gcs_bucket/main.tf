resource "google_storage_bucket" "static_site" {
  name     = var.bucket_name
  location = var.location
  project  = var.project_id

  public_access_prevention      = "enforced"
  uniform_bucket_level_access   = true

  versioning {
    enabled = true
  }
}
