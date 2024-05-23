module "S3_in_region1" {
  source = "./modules/modulefor2regions"
  region_name = "us-east-2"
}
module "S3_in_region2" {
  source = "./modules/modulefor2regions"
  region_name = "us-east-1"
}