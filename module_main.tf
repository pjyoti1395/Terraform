module "ec2_dev" {
  source = "./modules/ec2"

  instance_type     = "t3.micro"
  subnet_id         = aws_subnet.my_subnet.id
  security_group_id = aws_security_group.my_sg.id
  instance_name     = "dev-ec2"
  key_name          = "key123"
  private_key_path  = "/home/ec2-user/key123.pem"
}

module "ec2_test" {
  source = "./modules/ec2"

  instance_type     = "t3.small"
  subnet_id         = aws_subnet.my_subnet.id
  security_group_id = aws_security_group.my_sg.id
  instance_name     = "test-ec2"
  key_name          = "key123"
  private_key_path  = "/home/ec2-user/key123.pem"

}


