# Provider
provider "google" {}

variable "name" {
  type = "string"
}
module "vm" {
  // source  = "github.com/mycompany/my_terraform_module/"
  source     = "../../modules/compute/"
  gcpregion  = "europe-west2"
  gcpproject = "tf-demo-np"
  name       = "${var.name}"
}
