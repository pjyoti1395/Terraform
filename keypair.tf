
resource "aws_key_pair" "terraform_key" {
  key_name   = "key123"
  public_key = file("${path.module}/key123.pub")
}
