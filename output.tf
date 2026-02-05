output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "instance_type" {
  value = aws_instance.instance_type
}

output "region" {
  value = var.region
}
