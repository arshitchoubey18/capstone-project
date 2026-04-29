provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 (may update later)
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Server"
  }
}
