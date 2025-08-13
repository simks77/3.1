provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "kssim-bucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

# Add any resources you want (e.g., S3 bucket)
resource "aws_s3_bucket" "example" {
  bucket = "kssim-bucket"
}