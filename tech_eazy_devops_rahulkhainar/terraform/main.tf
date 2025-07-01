provider "aws" {
  region = var.region
}

resource "aws_security_group" "app_sg" {
  name = "techeazy-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  user_data     = file("${path.module}/../scripts/user_data.sh")
  tags = {
    Name = "Techeazy-${var.stage}"
  }
}