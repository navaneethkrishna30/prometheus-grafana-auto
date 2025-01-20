provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-023a307f3d27ea427"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  security_groups = [aws_security_group.monitoring_sg.name]

  tags = {
    Name = "PrometheusGrafanaEC2"
  }
}
