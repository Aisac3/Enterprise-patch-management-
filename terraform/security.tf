resource "aws_security_group" "rhel_sg" {

  name        = "rhel-sg"
  description = "RHEL Security Group"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH"

    from_port = 22
    to_port   = 22

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port = 0
    to_port   = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rhel-sg"
  }

}

resource "aws_key_pair" "patch_key" {
  key_name   = "enterprise-patch-key"
  public_key = file(pathexpand("~/.ssh/enterprise-patch-key.pub"))
}