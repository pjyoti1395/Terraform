output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "instance_type" {
  value = aws_instance.my_ec2.instance_type
}

output "region" {
  value = var.region
}

output "amazon_linux_ami" {
  value = data.aws_ami.amazon_linux.id
}
