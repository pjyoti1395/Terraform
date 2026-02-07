output "instance_id" {
  value = aws_instance.Terraform_Module_EC2.id
}


output "ami-image" {
  value = data.aws_ami.amazon_linux.id
}
