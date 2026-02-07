resource "aws_instance" "Terraform_Module_EC2" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  tags = {
    Name = var.instance_name
  }

    provisioner "remote-exec" {
    inline = [
      "echo 'Hello from remote-exec' > /tmp/remote_exec_test.txt",
      "uname -a",
      "whoami"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = self.private_ip
    }
  }
}
