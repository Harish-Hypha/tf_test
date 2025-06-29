variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "project_name" {
  type        = string
  description = "Project name for tagging"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
  default     = ["sg-0db92bb58db7fd24d"]
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}
