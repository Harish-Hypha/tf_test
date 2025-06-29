variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "project_name" {
  type        = string
  description = "Project name tag for resources"
}


variable "subnet_id" {
  type        = string
  description = "Subnet ID to launch the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
  default = "tf_ec2"
}

variable "security_group_ids" {
  type        = list(string)
  default     = ["sg-0db92bb58db7fd24d"]
  description = "Security group IDs"
}