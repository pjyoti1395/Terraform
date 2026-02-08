provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  for_each = var.server_config

  ami           = data.aws_ami.amazon_linux.id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
