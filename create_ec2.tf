resource "aws_instance" "web" {
  ami           = "ami-00ee4df451840fa9d"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  tags = {
    Name = "ec2-example-terraform"
  }
}
