output "instance_ids" {
  value = { for k, v in aws_instance.example : k => v.id }
}
