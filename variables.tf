variable "tags" {
  type = map
  default = {
    dev = {
      Name = "Workspace"
      Terraform = "true"
      Environment = "DEV"
    }
    prod = {
      Name = "Workspace"
      Terraform = "true"
      Environment = "Prod"
    }
  }
}

variable "vpc_cidr" {
  type = map
  default = {
    dev = "10.1.0.0/16"
    prod = "10.10.0.0/16"
  }
}

variable "subnet_cidr" {
  type = map
  default = {
    dev = "10.1.1.0/24"
    prod = "10.10.1.0/24"
  }
}