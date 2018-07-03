# Provider
provider "google" {
  credentials = "${file("account.json")}"
  region      = "${var.gcpregion}"
  project     = "${var.gcpproject}"
}

# Google compute instance
resource "google_compute_instance" "web" {
  name         = "web"
  machine_type = "n1-standard-1"
  depends_on   = ["google_sql_database_instance.master"]
  zone         = "${var.gcpregion}1-a"
  tags         = ["http-server"]                         # Tag opens up http port to 0.0.0.0/0

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

resource "google_sql_database_instance" "master" {
  name             = "${var.dbname}"
  database_version = "MYSQL_5_6"

  # First-generation instance regions are not the conventional
  # Google Compute Engine regions. See argument reference below.
  region = "${var.gcpregion}"

  settings {
    tier = "D0"
  }
}
