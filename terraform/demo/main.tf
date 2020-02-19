terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "eu-north-1"
  version = "~> 2.47"
}
resource "aws_s3_bucket" "assets" {
  bucket = "tf-2-assets-abdifatah"
  acl    = "public-read"

  tags = {
    system        = "immutable-webapp"
    environment   = "common"
    managed_by    = "terraform"
  }
}

resource "aws_s3_bucket" "assets-test" {
  bucket = "tf-2-assets-test-abdifatah"
  acl    = "public-read"

  tags = {
    system        = "immutable-webapp"
    environment   = "common"
    managed_by    = "terraform"
  }
}
