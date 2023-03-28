output "ec2_public_ip"{
  value = aws_instance.calcapp-server.public_ip
}