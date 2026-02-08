# Output the instance IDs

output "instance_ids" {
  value = aws_instance.Terraform_Module_EC2[*].id
}

# Output the instance types

output "instance_types" {
  value = aws_instance.Terraform_Module_EC2[*].instance_type
}

output "ami-image" {
  value = data.aws_ami.amazon_linux.id
}
