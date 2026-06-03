resource "aws_instance" "servers" {

  for_each = local.servers

  ami           = data.aws_ami.rhel9.id
  instance_type = each.value.instance_type

  subnet_id = aws_subnet.public.id

  key_name = aws_key_pair.patch_key.key_name

  vpc_security_group_ids = [
    aws_security_group.rhel_sg.id
  ]

  tags = {
    Name        = each.key
    Environment = each.value.environment
    ManagedBy   = "Terraform"
  }

}