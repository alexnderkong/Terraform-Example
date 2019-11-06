resource "aws_instance" "TEST_EC2" {
  ami                         = "${var.ami}"
  instance_type               = "t2.micro"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${var.public_subnet_id}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]
  associate_public_ip_address = true

  tags = {
    Name = "TEST_EC2"
  }

  lifecycle {
    create_before_destroy = true
  }
}