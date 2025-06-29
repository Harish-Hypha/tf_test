output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.public_subnet_id
}

output "pub_instance_id" {
  value = module.public_ec2.instance_id
}

output "instance_public_ip" {
  value = module.public_ec2.public_ip
}

# output "private_ec2_instance_id" {
#   value = module.private_ec2.instance_id
# }

# output "private_ec2_private_ip" {
#   value = module.private_ec2.private_ip
# }

