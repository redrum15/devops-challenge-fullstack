module "s3_build" {
  source = "./modules/s3"
}

module "cloudfront_instance" {
  source       = "./modules/cloudfront"
  bucket_build = module.s3_build.bucket_build
}

module "s3_policy" {
  source         = "./modules/policies"
  bucket_id      = module.s3_build.bucket_build.id
  cloudfront_arn = module.cloudfront_instance.arn
}
