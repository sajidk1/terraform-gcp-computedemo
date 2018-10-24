# GCP Provider
provider "google" {}
# AWS Provider
# AWS Region
provider "aws" {
  region = "eu-west-2"
}
data "aws_ssm_parameter" "secret" {
  name = "secret"
}

module "vm" {
  // source  = "github.com/mycompany/my_terraform_module/"
  source     = "../../modules/compute/"
  gcpregion  = "europe-west2"
  gcpproject = "tf-demo-np"
  name       = "${data.aws_ssm_parameter.secret.value}"
}


