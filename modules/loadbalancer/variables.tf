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



variable "loadbalancer-pubip" {
    default = "3552-loadbalancer-pubip"
}

variable "loadbalancer" {
    default = "3552-loadbalancer"
}

variable "frontend_ip_configuration" {
    type = map(string)
    default = {
        name = "pubip-3552"
    }
}