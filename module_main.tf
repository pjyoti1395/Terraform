module "ec2_dev" {
  source = "./modules/ec2"

  subnet_id         =  aws_subnet.my_subnet.id
  security_group_id =  aws_security_group.my_sg.id
  instance_name     =  "dev-ec2"

  instance_type  =    var.instance_type

}

module "ec2_test" {
  source = "./modules/ec2"

  subnet_id         =  aws_subnet.my_subnet.id
  security_group_id =  aws_security_group.my_sg.id
  instance_name     =  "test-ec2"
  instance_type  =    var.instance_type
 

}

module "for_each_example" {
  source = "./modules/for_each"
   region = "us-east-1"
}


