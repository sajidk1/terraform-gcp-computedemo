# Provider
provider "google" {}

module "hardended_vm" {
  // source  = "github.com/mycompany/my_terraform_module/"
  source     = "../modules/compute/"
  gcpregion  = "europe-west2"
  gcpproject = "tf-demo"
  name       = "my-awesome-app"
}
