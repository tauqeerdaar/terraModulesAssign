module "network" {
  source      = "./modules/network_data"
  vpc    = var.vpc
  subnet_name = var.subnet_name
  region      = var.region
  project_id  = var.project_id
}

module "secrets" {
  source      = "./modules/secrets"
  project_id  = var.project_id
  secret_name = var.secret_name
  region      = var.region
}

module "sql" {
  source            = "./modules/sql_instance"
  sql_instance_name = var.sql_instance_name
  database_version  = var.database_version
  region            = var.region
  db_type           = var.db_type
  db_names          = var.db_names
  db_username       = var.db_username
  db_password       = module.secrets.db_password
}

module "gcs" {
  source      = "./modules/gcs_bucket"
  bucket_name = var.bucket_name
  location    = var.location
  project_id  = var.project_id
}

module "vm" {
  source       = "./modules/vm_instance"
  vm_name      = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  disk_size    = var.disk_size
  subnet_name  = module.network.subnet_name  
}

module "firewall" {
  source     = "./modules/firewall"
  project_id = var.project_id
  fw_rule    = var.fw_rule
  vpc   = module.network.vpc_name    
}
