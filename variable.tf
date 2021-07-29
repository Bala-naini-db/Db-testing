variable "vpc_name" {
  #type    = "string"
  default = "testvpc01"

}


variable "subnet_name" {
#type    = "string"
  default = "testsubnet01"
}


variable "subnet_cidr" {
#  type    = "string"
  default = "10.12.0.0/24"

}

variable "vpc_network_name" {
#  type    = "string"
  default = "testnetwork"

}

variable "region" {
#  type    = "string"
  default = "us-central1"

}
