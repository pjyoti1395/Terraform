
resource "aws_instance" "my_ec2" {
  ami                     = data.aws_ami.amazon_linux.id
  instance_type           = var.instance_type
  subnet_id               = aws_subnet.my_subnet.id          
  vpc_security_group_ids  = [aws_security_group.my_sg.id]
  

  tags = {
    Name = "Terraform-EC2"
  }
}


resource "aws_instance" "Terraform_EC2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]


  tags = {
    Name = "local-exec-demo"
  }

  provisioner "local-exec" {
    command = "echo EC2_CREATED_${self.id} >> ec2_created.txt"
  }
}


