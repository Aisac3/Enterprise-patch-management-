resource "local_file" "ansible_inventory" {

  filename = "../ansible/inventories/hosts.ini"

  content = templatefile("${path.module}/inventory.tpl", {

    controller = [
      aws_instance.servers["controller"].private_ip
    ]

    dev = [
      aws_instance.servers["dev"].private_ip
    ]

    test = [
      aws_instance.servers["test"].private_ip
    ]

    prod = [
      aws_instance.servers["prod"].private_ip
    ]

  })
}