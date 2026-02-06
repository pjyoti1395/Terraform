terraform {
  backend "s3" {
    bucket         = "jyoti-terraform-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "eu-north-1" 
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}



