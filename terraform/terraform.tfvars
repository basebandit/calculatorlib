vpc_cidr_block = "10.0.0.0/16"
subnet_cidr_block = "10.0.10.0/24"
avail_zone = "us-east-1b"
env_prefix = "staging"
instance_type = "t2.small"
s3_tfstate= {
  bucket="calc-app-bucket"
}