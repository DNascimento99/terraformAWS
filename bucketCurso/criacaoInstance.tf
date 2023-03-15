data "aws_ami" "ubuntu" {
  most_recent = true
}
resource "aws_instance" "linux-instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}
