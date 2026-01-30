resource "aws_instance" "demo" {
  ami           = "ami-0ecd7798fb460dcf0"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-ec2"
  }
}
