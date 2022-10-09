provider "aws" {
  region  = "eu-central-1" # Brasil -> us-east-1
  profile = "tf014"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-087875765"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}