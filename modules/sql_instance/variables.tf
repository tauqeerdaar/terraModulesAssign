variable "sql_instance_name" {}
variable "database_version" {}
variable "region" {}
variable "db_type" {}
variable "db_names" { type = list(string) }
variable "db_username" {}
variable "db_password" {}
