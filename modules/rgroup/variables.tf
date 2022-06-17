locals {
  common_tags = {
    Name            = "Suong Tran"
    Project         = "Automation Project - Assignment 1"
    ExpirationDate  = "2022-06-30"
    ContactEmail    = "starolchen102@gmail.com"
    Enviroment      = "Lab"
  }
}

variable "resource_group" {
  default = ""
}

variable "location" {
  default = ""
}