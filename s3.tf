# The S3 Bucket for static website hosting
resource "aws_s3_bucket" "b" {
  bucket = "wildrydes-amt42"
  acl    = "public-read"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement":  [
        {
            "Effect": "Allow", 
            "Principal": "*", 
            "Action": "s3:GetObject", 
            "Resource": "arn:aws:s3:::wildrydes-amt42/*" 
        } 
    ]
}
POLICY
 website {
    index_document = "index.html"
    
  }
}