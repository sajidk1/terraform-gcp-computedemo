# Provider
provider "google" {}

module "vm" {
  // source  = "github.com/mycompany/my_terraform_module/"
  source     = "../../modules/compute/"
  gcpregion  = "europe-west2"
  gcpproject = "tf-demo-np"
  name       = "my-awesome-app"
}
