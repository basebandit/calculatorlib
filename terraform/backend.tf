terraform {
  backend "s3" {
    bucket = "calc-app"
    region = "us-east-1"
    key    = "jenkins-server/terraform.tfstate"
  }
}
