terraform{
  backend "s3"{
    bucket = "calc-app-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}