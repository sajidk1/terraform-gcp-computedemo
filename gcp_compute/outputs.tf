output sql_instance_address {
  description = "The IPv4 address of the master database instnace"
  value       = "${google_sql_database_instance.master.connection_name}"
}

output web_instance_address {
  description = "The IPv4 address of the master database instnace"
  value       = "${google_compute_instance.web.network_interface.0.address}"
}
