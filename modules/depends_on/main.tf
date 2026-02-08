resource "aws_instance" "depends_on_demo" {
  ami           = "ami-02781fbdc79017564"
  instance_type = "t3.micro"
  subnet_id     = "subnet-123456"

  # Force dependency even if not referenced
  depends_on = [
    aws_security_group.my_sg
  ]

  tags = {
    Name = "demo-instance"
  }
}
