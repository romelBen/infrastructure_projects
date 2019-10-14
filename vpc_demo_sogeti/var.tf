variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "AMIS" {
    type = "map"
    default = {
        #These AMIs are Ubuntu
        us-east-1 = "ami-0b25b3d814fa986ce"
        us-east-2 = "ami-0d36f68a8c544bbbe"
        eu-west-1 = "ami-0406237fdb3437aec"
        eu-west-2 = "ami-08cad0202d4a23452"
    }
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "testkey"  
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "testkey.pub"
}