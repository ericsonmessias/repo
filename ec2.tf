data "aws_ami" "ubuntu"{
    owners = ["amazon"]
    most_recent = true
    name_regex = "ubuntu"
} 

resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = data.aws_ami.ubuntu.id
  user_data     = aws_s3_bucket_object.this.key
}

output "aws_instance_ip" {
    value = aws_instance.web.public_ip
}