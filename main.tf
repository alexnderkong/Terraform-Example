provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

module "aws_vpc" {
    source = "./aws_vpc"
}

module "aws_security_group" {
    source = "./aws_security_group"
    vpc_id = "${module.aws_vpc.vpc_id}"
}

module "ec2" {
    source                 = "./aws_ec2_instance"
    public_subnet_id       = "${module.aws_vpc.public_subnet}"
    vpc_security_group_ids = "${module.aws_security_group.web_security_groups_id}"

}