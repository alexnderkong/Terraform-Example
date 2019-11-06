variable "ssh_port" {
    description = "This port is to allow SSH Connection"
    default = 22
}

variable "outbound_port" {
    description = "This port is for outbound connection"
    default = 0
}

variable "vpc_id" {
    type = "string"
    description = "VPC ID"
}