# Provider
provider "google" {
  credentials = "${file("account.json")}"
}

module "two-tier-app" {
  // source  = "github.com/mycompany/my_terraform_module/
  source     = "../mod-gcp_compute/"
  gcpregion  = "us-central"
  gcpproject = "np-sajid-test"
}

/* module "two-tier-app" {
  // source  = "github.com/mycompany/my_terraform_module/
  source     = "../mod-gcp_compute/"
  gcpregion  = "us-central"
  gcpproject = "np-sajid-test"
}
 */

