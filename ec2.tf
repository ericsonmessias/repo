data "aws_ami" "ubuntu"{
    owners = ["amazon"]
    most_recent = true
    name_regex = "ubuntu"
} 

resource "aws_instance" "web" {
  instance_type = "t4g.micro"
  ami           = data.aws_ami.ubuntu.id
  user_data     = aws_s3_bucket_object.this.content
}

output "aws_instance_ip" {
    value = aws_instance.web.public_ip
}

output "aws_s3_bucket_object" {
  value = aws_s3_bucket_object.this.content
}