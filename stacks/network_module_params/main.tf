# Provider
provider "google" {
  project = "tf-demo-np"
}

variable "name" {
  type = "string"
}

module "network" {
  source = "github.com/tasdikrahman/terraform-google-network"
  name   = "${var.name}"
}
