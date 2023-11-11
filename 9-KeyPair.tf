resource "aws_instance" "example" {
  ami           = "ami-0d7bfdca2fa8d3cc4
  instance_type = "t2.micro"
  key_name      = "MyLinuxBox"  # Name of the key pair on AWS

  // Other instance configuration...
}

resource "aws_key_pair" "example" {
  key_name   = "mykey"
  public_key = file("~/.ssh/mykey.pub")  # Path to your public key
}

