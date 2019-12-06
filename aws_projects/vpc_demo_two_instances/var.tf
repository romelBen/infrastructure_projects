variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_KEY_PATH" {}
variable "AWS_KEY_NAME" {}
variable "AWS_REGION" {
    default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}


variable "public_subnet_cidr" {
  type = "list"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "private_subnet_cidr" {
  type = "list"
  default = ["10.0.10.0/24","10.0.11.0/24","10.0.12.0/24","10.0.13.0/24","10.0.14.0/24","10.0.15.0/24"]
}

variable "azs" {
  type = "list"
  default = ["us-east-1a","us-east-1b","us-east-1c","us-east-1d","us-east-1e","us-east-1f"]
}

variable "AMIS-web" {
    type = "map"
    default = {
        us-east-1 = "ami-0b69ea66ff7391e80" # AMI is Linux
    }
}

variable "AMIS-db" {
  type = "map"
  default = { 
    us-east-1 = "ami-04065317647cd68fc" # SQL server 2012
  }
}
