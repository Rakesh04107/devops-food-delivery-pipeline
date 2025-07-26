output "public_ip" {
  value = aws_instance.devops_instance.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/rakesh-ec2-key ubuntu@${aws_instance.devops_instance.public_ip}"
}
