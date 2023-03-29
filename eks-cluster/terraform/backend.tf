terraform{
  backend "s3"{
    bucket = "calcapp-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}