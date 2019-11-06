resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags {
    Name = "VPC"
  }

}

resource "aws_subnet" "public" {
  cidr_block        = "${var.public_cidr_block}"
  vpc_id            = "${aws_vpc.vpc.id}"

  tags {
    Name = "Public Subnet"
  }
}