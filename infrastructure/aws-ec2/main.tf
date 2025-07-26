provider "aws" {
  region = "ap-south-1"
}

resource "aws_key_pair" "rakesh_key" {
  key_name   = "rakesh-ec2-key"
  public_key = var.ssh_public_key
}

resource "aws_security_group" "devops_sg" {
  name        = "devops-sg"
  description = "Allow SSH and app ports"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "App Ports"
    from_port   = 3000
    to_port     = 4000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.rakesh_key.key_name
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install docker.io -y
              systemctl enable docker
              systemctl start docker
              apt-get install git -y
              EOF

  tags = {
    Name = "DevOps-Instance"
  }
}
