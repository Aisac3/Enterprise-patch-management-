locals {

  servers = {
    controller = {
      environment = "management"
      instance_type = "t3.micro"
    }

    dev = {
      environment = "dev"
      instance_type = "t3.micro"
    }

    test = {
      environment = "test"
      instance_type = "t3.micro"
    }

    prod = {
      environment = "prod"
      instance_type = "t3.micro"
    }
  }

}