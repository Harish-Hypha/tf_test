variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Type of EC2 instance"
}

variable "key_name" {
  type        = string
  description = "AWS Key Pair name for EC2 SSH"
}


variable "project_name" {
  type        = string
  default     = "tf-module-demo"
  description = "Project name"
}
