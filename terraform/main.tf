provider "aws" {
  region = var.region
}

module "s3" {
  source      = "./s3"
  bucket_name = var.bucket_name
  region      = var.region
}
