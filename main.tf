resource "aws_instance" "demo" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-ec2"
  }
}
