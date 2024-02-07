resource "aws_instance" "web" {
  ami           = "ami-00ee4df451840fa9d"
  instance_type = "t2.micro"
  subnet_id = "subnet-07ce1861791c150af"
  associate_public_ip_address = "true"
  tags = {
    Name = "ec2-example-terraform"
  }
}
