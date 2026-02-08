variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2"
  type        = string
}

variable "instance_count" {
  type    = number
  default = 2
}




