provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-created-by-terraform-dynamic-secret"

  tags = {
    Name        = "My bucket from GitHub Actions"
    CreatedBy   = "GitHub Actions"
    Project     = "Terraform"
    Environment = "Dev"
  }
}