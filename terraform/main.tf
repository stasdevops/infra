provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "Reddit" {
  ami                    = "ami-00943fe435c07a32a"
  instance_type          = "t2.micro"
  key_name               = "work2"
  vpc_security_group_ids = ["${aws_security_group.reddit_sg.id}"]

}



resource "aws_security_group" "reddit_sg" {

  name        = "reddit_sg"
  description = "80/443/22 ports for proxy server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 9292
    to_port     = 9292
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
