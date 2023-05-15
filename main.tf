provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "eu-north-1"
}

resource "aws_instance" "ec2_instance" {
    tags = { Name = "${var.instance_name}"}
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
    vpc_security_group_ids = ["${var.sg_id}"]
    user_data = "{file("bash.sh")}"
}