output "ec2_public_ip"{
  value = aws_instance.calcapp-server.public_ip
}

output "tf_state_bucket"{
  value = aws_s3_bucket.tfstate_bucket.bucket
}