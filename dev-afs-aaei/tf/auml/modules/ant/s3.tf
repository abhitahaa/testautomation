#### We are going to create a s3 bucket ######
resource "aws_s3_bucket" "an_ai_bucket" {
    bucket = "an_ai"
    tags = {
      "buc" = "value"
      "support_group" = ""
      "env" = "dev"
      "name" = "abc"
    }
  
}

resource "aws_s3_account_public_access_block" "an_ai_bucket_access" {
  bucket = aws_s3_bucket.an_ai_bucket.id

  block_public_acls = true
  block_public_policy = true 
  ignore_public_acls = true
  restrict_public_buckets = true
  }