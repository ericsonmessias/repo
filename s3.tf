resource "aws_s3_bucket" "this"{
    bucket = "my-terraform-s3-bcuket-20211008"
    acl = "private"

    tags = {
        Name = "mybucket"
        Created = "20211008"
        Managedby = "Terraform"
    }
}

resource "aws_s3_bucket_object" "this"{
    bucket = aws_s3_bucket.this.bucket
    key = "my-new-object"
    source ="files/helloworld.txt"
}