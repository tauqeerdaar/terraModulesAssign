variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-east1"
}

variable "vpc" {
  description = "Name of the existing VPC network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the existing subnet"
  type        = string
}

variable "secret_name" {
  description = "Secret Manager secret name"
  type        = string
}

variable "sql_instance_name" {
  description = "Cloud SQL instance name"
  type        = string
}

variable "database_version" {
  description = "Cloud SQL database version, e.g., POSTGRES_14"
  type        = string
}

variable "db_type" {
  description = "Machine tier for the Cloud SQL instance"
  type        = string
}

variable "db_names" {
  description = "List of databases to create"
  type        = list(string)
}

variable "db_username" {
  description = "Username for the Cloud SQL database"
  type        = string
}

variable "bucket_name" {
  description = "Name of the GCS bucket"
  type        = string
}

variable "location" {
  description = "Location for resources (e.g., GCS bucket)"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for VM"
  type        = string
}

variable "zone" {
  description = "GCP zone for VM"
  type        = string
}

variable "disk_size" {
  description = "Disk size (GB) for VM boot disk"
  type        = number
}

variable "fw_rule" {
  description = "Firewall rule name"
  type        = string
}
