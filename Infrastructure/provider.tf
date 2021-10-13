
provider "aws" {
  region = "us-east-2"

}

# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-wgc"
    key = "state/igti/edv/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}