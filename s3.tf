resource "aws_s3_bucket" "this"{
    bucket = "my-terraform-s3-bucket-20211014"
    acl = "public-read"

    tags = {
        Name = "mybucket"
        Created = "20211014"
        Managedby = "Terraform"
    }
}

resource "aws_s3_bucket_object" "this"{
    bucket = aws_s3_bucket.this.bucket
    key = "script.sh"
    source ="files/script.sh"
    content_type = "text/*"
}