resource "aws_instance" "demo_ignore" {
  ami           = "ami-02781fbdc79017564"
  instance_type = "t3.small"
  subnet_id     = aws_subnet.my_subnet.id

  lifecycle {
    ignore_changes = [
      tags
    ]
  }

  tags = {
    Name = "ignore-demo"
    Env  = "dev"
  }
}
