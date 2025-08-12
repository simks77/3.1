provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

# Add any resources you want (e.g., S3 bucket)
resource "aws_s3_bucket" "example" {
  bucket = "your-unique-bucket-name"
}