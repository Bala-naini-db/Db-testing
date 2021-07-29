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




variable "vm_name" {
  default = "instance01"
}
variable "machine_size" {
  default = "f1-micro"
}

variable "zone" {
  default = "f1-micro"
}

variable "project" {
  default = "prefab-breaker-319803"
}

variable "image_name" {
  default = "ubuntu-1604-lts"
}

