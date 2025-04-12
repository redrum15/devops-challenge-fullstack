resource "aws_s3_bucket" "devops-challenge-build" {
  bucket = "devops-challenge-build-${terraform.workspace}"
}


resource "aws_s3_bucket_website_configuration" "build-wb-config" {
  bucket = aws_s3_bucket.devops-challenge-build.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
