output "vpc_name" {
  value = data.google_compute_network.existing_vpc.name
}

output "subnet_name" {
  value = data.google_compute_subnetwork.existing_subnet.name
}
