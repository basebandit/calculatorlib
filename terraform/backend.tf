terraform {
  backend "s3" {
    bucket = "basebandit-app"
    region = "us-east-1"
    key    = "jenkins-server/terraform.tfstate"
  }
}
