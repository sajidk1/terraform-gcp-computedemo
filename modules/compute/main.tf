# Google compute instance
resource "google_compute_instance" "vm" {
  name         = "${var.name}"
  project      = "${var.gcpproject}"
  machine_type = "n1-standard-1"
  zone         = "${var.gcpregion}-a"
  tags         = ["${var.name}"] 

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}
