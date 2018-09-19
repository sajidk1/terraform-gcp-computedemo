
output instance_address {
  description = "The IPv4 private address of the instance"
  value       = "${google_compute_instance.web.network_interface.0.address}"
}
output instance_public_address {
  description = "The IPv4 public address of the instance"
  value       = "${google_compute_instance.web.network_interface.0.access_config.0.assigned_nat_ip}"
}
output instance_id {
  description = "Machine ID"
  value       = "${google_compute_instance.web.instance_id}"
}