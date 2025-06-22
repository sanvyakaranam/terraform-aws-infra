resource "random_id" "suffix" {
    byte_length = 4 
}

resource "aws_s3_bucket" "pocbucket01" {
    bucket = "pocbucket01-${random_id.suffix.hex}"
    tags = {
        Name= "${var.env}-pocbucket01"
        }
  
}