resource "aws_s3_bucket" "b" {
  bucket = "random-buvket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_object" "object" {
  bucket = "random-buvket"
  key    = "random_key"
  source = "out.txt"

  etag = "${filemd5("out.txt")}"
}
