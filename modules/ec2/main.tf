resource "aws_instance" "Terraform_Module_EC2" {
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  instance_type          =  var.instance_type
  count = var.instance_count

   tags = {
    Name = "${var.instance_name}-${count.index}"
  }

    
}
