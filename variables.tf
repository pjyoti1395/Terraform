variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"   # Default value
}

variable "region" {
  description = "AWS region to deploy"
  type        = string
}
