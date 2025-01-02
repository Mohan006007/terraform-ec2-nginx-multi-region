resource "aws_instance" "ap_south_instance" {
  provider      = aws
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  key_name      = "testsouth"

  tags = {
    Name = "ap-south-instance"
  }

  user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                sudo systemctl enable nginx
              EOF
}

resource "aws_instance" "us_east_instance" {
  provider      = aws.us_east
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  key_name      = "testuseast"

  tags = {
    Name = "us-east-instance"
  }

  user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                sudo systemctl enable nginx
              EOF
}

