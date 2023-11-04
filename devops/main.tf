data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "ubuntu"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = "devops"

  tags = {
    Name = "HelloWorld"
  }
}

# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "ravi011992"
#   region = "ap-south-1"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }