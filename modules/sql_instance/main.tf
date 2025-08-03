resource "google_sql_database_instance" "instance" {
  name             = var.sql_instance_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier    = var.db_type
    edition = "ENTERPRISE"
  }

  deletion_protection = false
}

resource "google_sql_database" "main_database" {
  for_each = toset(var.db_names)
  name     = each.key
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "main_user" {
  name     = var.db_username
  instance = google_sql_database_instance.instance.name
  password = var.db_password
}
