resource "aws_s3_bucket" "tfstate_bucket"{
   bucket = var.s3_tfstate.bucket
   force_destroy = true
}

resource "aws_s3_bucket_versioning" "tfstate_bucket"{
  bucket = aws_s3_bucket.tfstate_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}