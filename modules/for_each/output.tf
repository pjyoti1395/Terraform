output "instance_ids" {
  value = { for k, v in aws_instance.example : k => v.id }
}

output "instance_type" {
  value = { for k, v in aws_instance.example : k => v.instance_type }
}

output "amazon_linux_ami" {
  value = data.aws_ami.amazon_linux.id
}

output "region" {
  value = var.region
}
