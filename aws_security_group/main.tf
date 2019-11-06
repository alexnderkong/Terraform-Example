resource "aws_security_group" "test_web_sg" {
  name        = "TEST-sg"
  description = "Allow SSH & HTTP inbound connection"
  vpc_id      = "${var.vpc_id}"

  #SSH

  ingress {
    from_port = "${var.ssh_port}"
    protocol = "tcp"
    to_port = "${var.ssh_port}"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = "${var.outbound_port}"
    protocol = "-1"
    to_port = "${var.outbound_port}"
    cidr_blocks = ["0.0.0.0/0"]
  }

}