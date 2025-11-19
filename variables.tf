variable "my_os_image" {
  type        = string
  description = "here I am storing my aws ami id"
  #default     = "ami-0cae6d6fe6048ca2c"

}

variable "machine_size" {
  type        = string
  description = "here I am storing my machine size"
  #default     = "t2.nano"

}

variable "vm_name" {
  type        = string
  description = "host name of machine"
  #default     = "austin-vm1"

}

variable "my_aws_region" {
  type        = string
  description = "aws region name"
  #default     = "us-east-1"

}

variable "private_key_name" {
  type        = string
  description = "name of private key used to connect to host"
  #default     = "splunk-key"

}