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

output "for_each_instance_ids" {
  value = module.for_each_example.instance_ids
}

output "for_each_instance_types" {
  value = module.for_each_example.instance_types
}

output "ec2_dev_data" {
  value = module.ec2_dev.instance_type
}

output "ec2_test_data" {
  value = module.ec2_test.instance_type
}