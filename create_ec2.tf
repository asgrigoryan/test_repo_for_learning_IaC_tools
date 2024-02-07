resource "aws_vpc" "my_vpc" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = "vpc-0525574ad257c4b46"
  cidr_block        = "172.31.16.0/20"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}


resource "aws_instance" "web" {
  ami           = "ami-00ee4df451840fa9d"
  instance_type = "t2.micro"
  subnet_id = "subnet-07ce1861791c150af"
  associate_public_ip_address = "true"
  tags = {
    Name = "ec2-example-terraform-2"
  }
}
