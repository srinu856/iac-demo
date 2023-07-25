resource "aws_s3_bucket" "my_bucket" {
  bucket = "sujatha276"


}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "sujatha276"
  key    = "vpc.tf"
  source = "${path.module}/vpc.tf"
  etag   = "${filemd5("${path.module}/vpc.tf")}"
}

