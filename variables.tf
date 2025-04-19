variable "aws_region" {
  default = "us-east-1"
}

variable "my_ip_cidr" {
  description = "Your public IP in CIDR format, e.g. 203.0.113.10/32"
  default     = "203.0.113.10/32"
}

variable "instance_type" {
  default = "t3.micro"
}
