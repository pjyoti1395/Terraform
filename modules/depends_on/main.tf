resource "aws_instance" "depends_on_demo" {
  ami           = "ami-02781fbdc79017564"
  instance_type = "t3.small"
  subnet_id = aws_subnet.my_subnet.id 

  # Force dependency even if not referenced
  depends_on = [
    aws_security_group.my_sg
  ]

  tags = {
    Name = "demo-instance"
  }
}


resource "aws_instance" "depends_on_demo_2" {
  ami           = "ami-02781fbdc79017564"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.my_subnet.id

  depends_on = [
    aws_security_group.my_sg
  ]

  tags = {
    Name = "demo-instance-2"
  }
}