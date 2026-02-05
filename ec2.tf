
data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "my_ec2" {
  ami                     = data.aws_ami.amazon_linux.id
  instance_type           = "t3.micro"
  subnet_id               = aws_subnet.my_subnet.id          
  vpc_security_group_ids  = [aws_security_group.my_sg.id]

  tags = {
    Name = "Terraform-EC2"
  }
}


