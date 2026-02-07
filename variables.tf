variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"   # Default value
}

variable "region" {
  description = "AWS region to deploy"
  type        = string
}

variable "instance_count" {
  type = number
}