
#create ec2 in public subnet

resource "aws_instance"  "APP" {
  ami = "ami-01107263728f3bef4"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.publicsubnets.id
  tags = {
    Name ="APP"
  }
}



#create ec2 in private subnet

resource "aws_instance" "DateBase" {
  ami           = "ami-01107263728f3bef4"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.privatesubnets.id

  tags = {
    Name ="DataBase"
  }
}


