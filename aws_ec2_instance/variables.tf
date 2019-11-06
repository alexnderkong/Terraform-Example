variable "ami" {
  description = "trusted debian ami"
  default     = "ami-0764a46039d5d5fa5"
}

variable "key_name" {
  default = "sahmed-home"
}

variable "public_subnet_id" {
  default = "default value"
}

variable "vpc_security_group_ids" {
  default = "default value"
}