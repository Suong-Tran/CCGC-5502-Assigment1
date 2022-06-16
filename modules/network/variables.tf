locals {
  common_tags = {
    Name            = "Suong Tran"
    Project         = "Automation Project - Assignment 1"
    ExpirationDate  = "2022-06-30"
    ContactEmail    = "starolchen102@gmail.com"
    Enviroment      = "Lab"
  }
}

variable "resource_group"{
    default = ""
}

variable "location" {
    default = ""
}

variable "vnet" {
  default = "virtual_network"
}

variable "vnet_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet" {
  default = "subnet"
}

variable "subnet_space" {
  default = ["10.0.1.0/24"]
}