ssh-keygen -t rsa -b 2048 -f my-key.pem
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = file("${path.module}/my-key.pem.pub")
}
