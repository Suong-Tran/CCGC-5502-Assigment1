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

variable "admin_username" {
  default = "n01443552"
}

variable "admin_password" {
  default = "Suong_1023"
}

variable "post_server_name" {
    default = "postgresql-server-3552"
}

variable "post_data_name" {
    default = "database-3552"
}