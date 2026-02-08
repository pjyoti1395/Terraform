resource "aws_security_group" "my_sg" {
  name        = "my-demo-sg"
  description = "Demo SG"
  vpc_id      = "vpc-123456"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}