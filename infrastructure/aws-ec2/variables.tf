variable "ssh_public_key" {
  type = string
}

variable "ami_id" {
  type    = string
  default = "ami-0f5ee92e2d63afc18"  # Ubuntu 22.04 LTS in ap-south-1 (Mumbai)
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
