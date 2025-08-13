provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

