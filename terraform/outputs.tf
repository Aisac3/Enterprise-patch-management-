output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}

output "instance_public_ips" {

  value = {
    for k, v in aws_instance.servers :
    k => v.public_ip
  }

}

output "server_details" {

  value = {
    for k, v in aws_instance.servers :
    k => {
      public_ip  = v.public_ip
      private_ip = v.private_ip
    }
  }

}